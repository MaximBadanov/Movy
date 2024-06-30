import Foundation

struct MovieParameters: Codable {
    let randomGenreID: String
    let page: String = "\(Int.random(in: 1...100))"
    
    enum CodingKeys: String, CodingKey  {
        case randomGenreID = "with_genres"
        case page
    }
}



