import SwiftUI
import Combine


class ResultViewViewModel: ObservableObject {
    private var subscriber: AnyCancellable?
    private let dataManager: DataManager
    
    init() {
        guard let network = DIContainer.shared.injectDependency(
            dependency: NetworkService()) else {
            fatalError("Service not found in DI container")
        }
        dataManager = DataManager(network: network)
    }
    
    private func fetchGenres(requestModel: RequestModel<GenresResponse>) -> AnyCancellable {
        return dataManager.fetchGenres(requestModel: requestModel)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print("Finished with error: \(error)")
                }
            }, receiveValue: { data in
                data.genres.forEach {
                    print("Genre: \($0.name), ID: \($0.id)")
                }
            })
    }
}

extension ResultViewViewModel: ResultViewViewModelProtocol {
    func setSubscriber(requestModel: RequestModel<GenresResponse>) {
        subscriber = fetchGenres(requestModel: requestModel)
    }
}
