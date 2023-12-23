import SwiftUI


enum AllGenres: CaseIterable {
    case action
    case advanture
    case animation
    case comedy
    case crime
    case fantasy
    case sience
    case horror
    
    var instance: Genre {
        switch self {
        case .action:
            return Genre(title: "Action",
                         emoji: "🥊",
                         color: .red)
        case .advanture:
            return Genre(title: "Advanture",
                         emoji: "🪂",
                         color: .blue)
        case .animation:
            return Genre(title: "Animation",
                         emoji: "🐥",
                         color: .orange)
        case .comedy:
            return Genre(title: "Comedy",
                         emoji: "🤣",
                         color: .cyan)
        case .crime:
            return Genre(title: "Crime",
                         emoji: "🔦",
                         color: .gray)
        case .fantasy:
            return Genre(title: "Fantasy",
                         emoji: "🦄",
                         color: .purple)
        case .sience:
            return Genre(title: "Sience",
                         emoji: "👽",
                         color: .green)
        case .horror:
            return Genre(title: "Horror",
                         emoji: "🪚",
                         color: .teal)
        }
    }
}

