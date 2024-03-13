import SwiftUI
import Combine


struct ResultView: View {
    @State private var subscriber: AnyCancellable?
    
    private let dataManager: DataManager
    private let requestModel = RequestModel(
        urlString: Urls.moviedbGenres.rawValue,
        header: Headers.movieDB.header,
        httpMethod: HTTPMethods.get,
        modelToParse: GenresResponse.self)
    
    init() {
        guard let network = DIContainer.shared.injectDependency(
            dependency: NetworkService()
        ) else {
            fatalError("Service not found in DI container")
        }
        dataManager = DataManager(network: network)
    }
    
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
                subscriber = dataManager.fetchGenres(requestModel: requestModel)
            }
    }
}

#Preview {
    ResultView()
}
