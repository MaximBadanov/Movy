struct MovieResponse: Decodable {
    let results: [MovieResponseModel]
}

struct MovieResponseModel: Decodable {
    let title: String
    let poster: String
    
    enum CodingKeys: String, CodingKey {
        case title
        case poster = "poster_path"
    }
}
