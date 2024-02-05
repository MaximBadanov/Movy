struct GenresModel: Decodable {
    var genres: [GenreModel]
}

struct GenreModel: Decodable {
    var name: String
}
