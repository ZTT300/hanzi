import Foundation
import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    case cars = "汽车探险"
    case space = "航天梦"
    case heroes = "奥特英雄"

    var id: String { rawValue }

    var icon: String {
        switch self {
        case .cars: return "car.fill"
        case .space: return "moon.stars.fill"
        case .heroes: return "sparkles"
        }
    }

    var accent: Color {
        switch self {
        case .cars: return .blue
        case .space: return .purple
        case .heroes: return .orange
        }
    }
}

struct CharacterEntry: Identifiable {
    let id = UUID()
    let character: String
    let pinyin: String
    let meaning: String
    let strokeHint: String
    let sampleWord: String
}

struct CharacterLesson: Identifiable {
    let id = UUID()
    let grade: Int
    let theme: Theme
    let title: String
    let story: String
    let goal: String
    let characters: [CharacterEntry]
}
