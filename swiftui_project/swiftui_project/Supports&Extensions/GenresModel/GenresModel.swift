struct GenresResponse: Decodable {
    let genres: [GenreResponseModel]
}

struct GenreResponseModel: Decodable {
    let id: Int
    let name: String
}
