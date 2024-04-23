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
                color: .red,
                id: "28"
            )
        case .advanture:
            return Genre(
                title: "Advanture",
                emoji: "🪂",
                color: .blue,
                id: "12"
            )
        case .animation:
            return Genre(
                title: "Animation",
                emoji: "🐥",
                color: .orange,
                id: "16"
            )
        case .comedy:
            return Genre(
                title: "Comedy",
                emoji: "🤣",
                color: .cyan,
                id: "35"
            )
        case .crime:
            return Genre(
                title: "Crime",
                emoji: "🔦",
                color: .gray,
                id: "80"
            )
        case .fantasy:
            return Genre(
                title: "Fantasy",
                emoji: "🦄",
                color: .purple,
                id: "14"
            )
        case .sience:
            return Genre(
                title: "Sience",
                emoji: "👽",
                color: .green,
                id: "878"
            )
        case .horror:
            return Genre(
                title: "Horror",
                emoji: "🪚",
                color: .teal,
                id: "27"
            )
        case .documentary:
            return Genre(
                title: "Documentary",
                emoji: "📃",
                color: .indigo,
                id: "99"
            )
        case .drama:
            return Genre(
                title: "Drama",
                emoji: "🎭",
                color: .blue,
                id: "18"
            )
        case .family:
            return Genre(
                title: "Family",
                emoji: "👨‍👩‍👧‍👦",
                color: .pink,
                id: "10751"
            )
        case .history:
            return Genre(
                title: "History",
                emoji: "🤴🏻",
                color: .red,
                id: "36"
            )
        case .music:
            return Genre(
                title: "Music",
                emoji: "🎤",
                color: .yellow,
                id: "10402"
            )
        case .mystery:
            return Genre(
                title: "Mystery",
                emoji: "👻",
                color: .gray,
                id: "9648"
            )
        case .romance:
            return Genre(
                title: "Romance",
                emoji: "🌹",
                color: .indigo,
                id: "10749"
            )
        case .tv:
            return Genre(
                title: "TV Show",
                emoji: "🧼",
                color: .red,
                id: "10770"
            )
        case .thiller:
            return Genre(
                title: "Thiller",
                emoji: "🗡️",
                color: .gray,
                id: "53"
            )
        case .war:
            return Genre(
                title: "War",
                emoji: "💣",
                color: .cyan,
                id: "10752"
            )
        case .western:
            return Genre(
                title: "Western",
                emoji: "🤠",
                color: .yellow,
                id: "37"
                
            )
        }
    }
}

