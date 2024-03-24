import SwiftUI
import Combine


struct ResultView: View {
    @ObservedObject private var viewModel = ResultViewViewModel()
    private let requestModel = RequestModel(
        urlString: Urls.moviedbGenres.rawValue,
        header: Headers.movieDB.header,
        httpMethod: HTTPMethods.get,
        modelToParse: GenresResponse.self)
    
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
                viewModel.setSubscriber(requestModel: requestModel)
            }
    }
}

#Preview {
    ResultView()
}
