import SwiftUI

extension String {
    var toEmoji: String {
        switch self.lowercased() {
        case "action":
            return "🥊"
        case "adventure":
            return "🪂"
        case "animation":
            return "🐥"
        case "comedy":
            return "🤣"
        case "crime":
            return "🔦"
        case "fantasy":
            return "🦄"
        case "science fiction":
            return "👽"
        case "horror":
            return "🪚"
        case "documentary":
            return "📃"
        case "drama":
            return "🎭"
        case "family":
            return "👨‍👩‍👧‍👦"
        case "history":
            return "🤴🏻"
        case "music":
            return "🎤"
        case "mystery":
            return "👻"
        case "romance":
            return "🌹"
        case "tv movie":
            return "🧼"
        case "thriller":
            return "🗡️"
        case "war":
            return "💣"
        case "western":
            return "🤠"
        default:
            return "🫥"
        }
    }
    
    var setColor: Color {
        switch self.lowercased() {
        case "action":
            return .red
        case "adventure":
            return .blue
        case "animation":
            return .orange
        case "comedy":
            return .cyan
        case "crime":
            return .gray
        case "fantasy":
            return .purple
        case "science fiction":
            return .green
        case "horror":
            return .teal
        case "documentary":
            return .indigo
        case "drama":
            return .blue
        case "family":
            return .pink
        case "history":
            return .red
        case "music":
            return .yellow
        case "mystery":
            return .gray
        case "romance":
            return .indigo
        case "tv movie":
            return .red
        case "thriller":
            return .gray
        case "war":
            return .cyan
        case "western":
            return .yellow
        default:
            return .customGray
        }
    }
}
