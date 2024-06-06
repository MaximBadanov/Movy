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
        case "action", "history", "tv movie":
            return .red
        case "crime", "mystery", "thriller":
            return .gray
        case "documentary", "romance":
            return .indigo
        case "adventure", "drama":
            return .blue
        case "music", "western":
            return .yellow
        case "comedy", "war":
            return .cyan
        case "fantasy":
            return .purple
        case "science fiction":
            return .green
        case "horror":
            return .teal
        case "family":
            return .pink
        case "animation":
            return .orange
        default:
            return .customGray
        }
    }
    
    var convertIdToString: String {
        switch self {
        case "28":
            return "action"
        case "12":
            return "adventure"
        case "16":
            return "animation"
        case "35":
            return "comedy"
        case "80":
            return "crime"
        case "14":
            return "fantasy"
        case "878":
            return "science fiction"
        case "27":
            return "horror"
        case "99":
            return "documentary"
        case "18":
            return "drama"
        case "10751":
            return "family"
        case "36":
            return "history"
        case "10402":
            return "music"
        case "9648":
            return "mystery"
        case "10749":
            return "romance"
        case "10770":
            return "tv movie"
        case "53":
            return "thriller"
        case "10752":
            return "war"
        case "37":
            return "western"
        default:
            return "unknown genre"
        }
    }
}
