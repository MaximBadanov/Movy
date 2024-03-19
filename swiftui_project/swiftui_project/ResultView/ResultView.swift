import SwiftUI
import Combine


struct ResultView: View {
    private var subscriber: AnyCancellable?
    private let dataManager: DataManager
    private let requestModel = RequestModel(
        urlString: Urls.moviedbGenres.rawValue,
        header: Headers.movieDB.header,
        httpMethod: HTTPMethods.get,
        modelToParse: GenresResponse.self)
    
    init() {
        guard let network = DIContainer.shared.injectDependency(
            dependency: NetworkService()) else {
            fatalError("Service not found in DI container")
        }
        dataManager = DataManager(network: network)
        subscriber = dataManager.fetchGenres(requestModel: requestModel)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print("Finished with error: \(error)")
                }
            }, receiveValue: { data in
                data.genres.forEach { print("\($0.name) _______ id: \($0.id)") }
            })
    }
    
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
//                ????
            }
    }
}

#Preview {
    ResultView()
}
