import Combine
import SwiftUI


class DataManager: DataManagerProtocol {
   private var network: NetworkServiceProtocol
    
    init() {
        guard let network = DIContainer.shared.injectDependency(dependency: NetworkService()) else {
            fatalError("Service not found in DI container")
        }
        self.network = network
    }
    
    func fetchGenres<T: Decodable>(requestModel: RequestModel<T>) -> AnyPublisher<T, Error> {
        return network.makeRequest(requestModel: requestModel)
    }
    
<<<<<<< HEAD
    func fetchMovieByGenres<T: Decodable>(requestModel: RequestModel<T>, genreIDs: [String]) -> AnyPublisher<T, Error> {
=======
    func fetchMovieByGenres<T: Decodable>(requestModel: RequestModel<T>,
                                          genreIDs: [String]) -> AnyPublisher<T, Error> {
>>>>>>> task_k_work
        return network.makeRequest(requestModel: requestModel, genreIDs: genreIDs)
    }
}
