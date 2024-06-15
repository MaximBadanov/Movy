struct MovieResponse: Decodable {
    let results: [MovieResponseModel]
}

struct MovieResponseModel: Decodable {
<<<<<<< HEAD
    var title: String
    let poster: String
=======
    let title: String
    let poster: String
    let genres: [Int]
    
>>>>>>> task_k_work
    
    enum CodingKeys: String, CodingKey {
        case title
        case poster = "poster_path"
<<<<<<< HEAD
=======
        case genres = "genre_ids"
>>>>>>> task_k_work
    }
}
