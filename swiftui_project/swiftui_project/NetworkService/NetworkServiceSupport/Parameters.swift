enum Parameters {
    case movie(genreIDs: [String])
    var parameter: [String: Any] {
        switch self {
        case let .movie(genreIDs):
            return [
                "with_genres": genreIDs.randomElement() ?? "",
                "page": "\(Int.random(in: 1...100))"
            ]
        }
    }
}
