import SwiftUI

struct LessonDetailView: View {
    let lesson: CharacterLesson
    @State private var selectedIndex: Int = 0

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                header
                storyCard
                practiceSection
                characterCards
                reflectionSection
            }
            .padding()
        }
        .navigationTitle(lesson.title)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var header: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(systemName: lesson.theme.icon)
                .font(.title)
                .foregroundStyle(lesson.theme.accent)
                .frame(width: 44, height: 44)
                .background(lesson.theme.accent.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            VStack(alignment: .leading, spacing: 4) {
                Text("年级 \(lesson.grade) · \(lesson.theme.rawValue)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(lesson.goal)
                    .font(.headline)
            }
            Spacer()
        }
    }

    private var storyCard: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("任务故事")
                .font(.headline)
            Text(lesson.story)
                .font(.body)
                .foregroundStyle(.secondary)
            Divider()
            Text("用故事造句：和孩子一起用每个生字说一句赛车、航天或奥特曼的短句。")
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }

    private var practiceSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("跟着提示练写")
                .font(.headline)
            TabView(selection: $selectedIndex) {
                ForEach(Array(lesson.characters.enumerated()), id: \.(offset)) { index, entry in
                    CharacterPracticeCard(entry: entry)
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .frame(height: 220)
        }
    }

    private var characterCards: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("生字卡片")
                .font(.headline)
            LazyVGrid(columns: [.init(.flexible()), .init(.flexible())], spacing: 12) {
                ForEach(lesson.characters) { entry in
                    CharacterFlashCard(entry: entry, theme: lesson.theme)
                }
            }
        }
    }

    private var reflectionSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("复述挑战")
                .font(.headline)
            Text("用本课的 3 个字，写一句能量补给或任务汇报，例如：'勇敢的奥特曼在夜空守护光。'")
                .font(.body)
                .foregroundStyle(.secondary)
            Text("家长提示：请孩子大声读出句子，确认拼音、声调和笔顺。")
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

struct CharacterPracticeCard: View {
    let entry: CharacterEntry
    @State private var showHint = false

    var body: some View {
        VStack(spacing: 12) {
            Text(entry.character)
                .font(.system(size: 72, weight: .bold, design: .rounded))
            Text(entry.pinyin)
                .font(.headline)
            Text(entry.meaning)
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Button(showHint ? "收起笔顺提示" : "查看笔顺提示") {
                withAnimation { showHint.toggle() }
            }
            .buttonStyle(.borderedProminent)
            if showHint {
                Text(entry.strokeHint)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

struct CharacterFlashCard: View {
    let entry: CharacterEntry
    let theme: Theme
    @State private var showWord = false

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(entry.character)
                    .font(.system(size: 42, weight: .bold))
                Spacer()
                Text(entry.pinyin)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            Text(entry.meaning)
                .font(.subheadline)
            Button(showWord ? "隐藏应用词" : "显示应用词") {
                withAnimation { showWord.toggle() }
            }
            .font(.caption.weight(.semibold))
            .buttonStyle(.bordered)
            if showWord {
                Text("示例：\(entry.sampleWord)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(theme.accent.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
    }
}

#Preview {
    NavigationStack {
        LessonDetailView(lesson: sampleLessons.first!)
    }
}
