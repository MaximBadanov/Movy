import SwiftUI


enum AllGenres: CaseIterable {
    case action
    case advanture
    case animation
    case comedy
    case crime
    case documentary
    case drama
    case family
    case fantasy
    case history
    case horror
    case music
    case mystery
    case romance
    case sience
    case tv
    case thiller
    case war
    case western
    
    var instance: Genre {
        switch self {
        case .action:
            return Genre(
                title: "Action",
                emoji: "🥊",
                color: .red
            )
        case .advanture:
            return Genre(
                title: "Advanture",
                emoji: "🪂",
                color: .blue
            )
        case .animation:
            return Genre(
                title: "Animation",
                emoji: "🐥",
                color: .orange
            )
        case .comedy:
            return Genre(
                title: "Comedy",
                emoji: "🤣",
                color: .cyan
            )
        case .crime:
            return Genre(
                title: "Crime",
                emoji: "🔦",
                color: .gray
            )
        case .fantasy:
            return Genre(
                title: "Fantasy",
                emoji: "🦄",
                color: .purple
            )
        case .sience:
            return Genre(
                title: "Sience",
                emoji: "👽",
                color: .green
            )
        case .horror:
            return Genre(
                title: "Horror",
                emoji: "🪚",
                color: .teal
            )
        case .documentary:
            return Genre(
                title: "Documentary",
                emoji: "📃",
                color: .indigo
            )
        case .drama:
            return Genre(
                title: "Drama",
                emoji: "🎭",
                color: .blue
            )
        case .family:
            return Genre(
                title: "Family",
                emoji: "👨‍👩‍👧‍👦",
                color: .pink
            )
        case .history:
            return Genre(
                title: "History",
                emoji: "🤴🏻",
                color: .red
            )
        case .music:
            return Genre(
                title: "Music",
                emoji: "🎤",
                color: .yellow
            )
        case .mystery:
            return Genre(
                title: "Mystery",
                emoji: "👻",
                color: .gray
            )
        case .romance:
            return Genre(
                title: "Romance",
                emoji: "🌹",
                color: .indigo
            )
        case .tv:
            return Genre(
                title: "TV Show",
                emoji: "🧼",
                color: .red
            )
        case .thiller:
            return Genre(
                title: "Thiller",
                emoji: "🗡️",
                color: .gray
            )
        case .war:
            return Genre(
                title: "War",
                emoji: "💣",
                color: .cyan
            )
        case .western:
            return Genre(
                title: "Western",
                emoji: "🤠",
                color: .yellow
                
            )
        }
    }
}

