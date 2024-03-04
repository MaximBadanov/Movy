import SwiftUI
import Combine


struct ResultView: View {
    @State private var subcriber: AnyCancellable?
    
    private let dataManager = DataManager(network: NetworkService())
    private let requestModel = RequestModel(
        urlString: Urls.moviedbGenres.rawValue,
        header: Headers.movieDB.header,
        httpMethod: HTTPMethods.get,
        modelToParse: GenresResponse.self)
    
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
                subcriber = dataManager.fetchGenres(requestModel: requestModel)
            }
    }
}

#Preview {
    ResultView()
}
