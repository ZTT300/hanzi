import SwiftUI

struct ContentView: View {
    @State private var selectedTheme: Theme = .cars

    private var filteredLessons: [CharacterLesson] {
        sampleLessons.filter { $0.theme == selectedTheme }.sorted { $0.grade < $1.grade }
    }

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                header
                ThemeSelector(selectedTheme: $selectedTheme)
                Text("选择喜欢的主题，跟着故事认识人教版六年级及以内的汉字。")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(filteredLessons) { lesson in
                            NavigationLink(value: lesson) {
                                LessonCard(lesson: lesson)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationDestination(for: CharacterLesson.self) { lesson in
                LessonDetailView(lesson: lesson)
            }
        }
    }

    private var header: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("汉字冒险")
                    .font(.largeTitle.bold())
                Text("把写字练习变成赛车、航天和奥特曼任务。")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image(systemName: "pencil.and.outline")
                .font(.system(size: 32))
                .foregroundColor(selectedTheme.accent)
        }
        .padding(.horizontal)
        .padding(.top)
    }
}

struct ThemeSelector: View {
    @Binding var selectedTheme: Theme

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(Theme.allCases) { theme in
                    Button {
                        selectedTheme = theme
                    } label: {
                        HStack {
                            Image(systemName: theme.icon)
                            Text(theme.rawValue)
                        }
                        .font(.callout.weight(.semibold))
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(theme == selectedTheme ? theme.accent.opacity(0.15) : Color(.systemGray6))
                        .foregroundColor(theme == selectedTheme ? theme.accent : .primary)
                        .clipShape(Capsule())
                        .overlay(
                            Capsule()
                                .stroke(theme == selectedTheme ? theme.accent : Color(.systemGray4), lineWidth: 1)
                        )
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct LessonCard: View {
    let lesson: CharacterLesson

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Label("年级：\(lesson.grade)", systemImage: "graduationcap.fill")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                Spacer()
                Label(lesson.theme.rawValue, systemImage: lesson.theme.icon)
                    .font(.footnote.weight(.semibold))
                    .foregroundStyle(lesson.theme.accent)
            }
            Text(lesson.title)
                .font(.title3.bold())
            Text(lesson.story)
                .font(.callout)
                .foregroundColor(.secondary)
            Text("目标：\(lesson.goal)")
                .font(.footnote)
                .foregroundColor(.secondary)
            HStack(spacing: 12) {
                ForEach(lesson.characters.prefix(3)) { entry in
                    VStack {
                        Text(entry.character)
                            .font(.title)
                        Text(entry.pinyin)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(12)
                    .background(lesson.theme.accent.opacity(0.08))
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                }
            }
        }
        .padding()
        .background(.background)
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(Color(.systemGray5), lineWidth: 1)
        )
        .background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color(.systemBackground))
                .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
        )
    }
}

#Preview {
    ContentView()
}
