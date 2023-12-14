

enum Genres {
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
            return Genre(title: "Action", emoji: "🥊")
        case .advanture:
            return Genre(title: "Advanture", emoji: "🪂")
        case .animation:
            return Genre(title: "Animation", emoji: "🐥")
        case .comedy:
            return Genre(title: "Comedy", emoji: "🤣")
        case .crime:
            return Genre(title: "Crime", emoji: "🔦")
        case .fantasy:
            return Genre(title: "Fantasy", emoji: "🦄")
        case .sience:
            return Genre(title: "Sience", emoji: "👽")
        case .horror:
            return Genre(title: "Horror", emoji: "🪚")
        }
    }
}
