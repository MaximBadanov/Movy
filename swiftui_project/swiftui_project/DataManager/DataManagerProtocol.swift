import SwiftUI
import Combine


protocol DataManagerProtocol {
    func fetchGenres<T: Decodable>(requestModel: RequestModel<T>) -> AnyPublisher<T, Error>
    func fetchMovieByGenres<T: Decodable>(requestModel: RequestModel<T>, genreIDs: [String]) -> AnyPublisher<T, Error>
}
