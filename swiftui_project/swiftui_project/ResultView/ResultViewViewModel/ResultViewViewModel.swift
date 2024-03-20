import SwiftUI
import Combine


class ResultViewViewModel: ObservableObject {
    var subscriber: AnyCancellable?
    
    private let dataManager: DataManager
    
    init() {
        guard let network = DIContainer.shared.injectDependency(
            dependency: NetworkService()) else {
            fatalError("Service not found in DI container")
        }
        dataManager = DataManager(network: network)
    }
}


extension ResultViewViewModel: ResultViewViewModelProtocol {
    func fetchGenres<T: Decodable>(requestModel: RequestModel<T>) -> AnyPublisher<T, Error> {
        return dataManager.fetchGenres(requestModel: requestModel)
    }
}
