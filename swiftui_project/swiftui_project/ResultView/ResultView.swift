import SwiftUI
import Combine


struct ResultView: View {
    private let viewModel = ResultViewViewModel()
    private let requestModel = RequestModel(
        urlString: Urls.moviedbGenres.rawValue,
        header: Headers.movieDB.header,
        httpMethod: HTTPMethods.get,
        modelToParse: GenresResponse.self)
    
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
                viewModel.subscriber = viewModel.fetchGenres(requestModel: requestModel)
                    .sink(receiveCompletion: { completion in
                        switch completion {
                        case .finished:
                            print("Finished")
                        case .failure(let error):
                            print("Finished with error: \(error)")
                        }
                    }, receiveValue: { data in
                        data.genres.forEach {
                            print("Genre: \($0.name), ID: \($0.id)") }
                    })
            }
    }
}

#Preview {
    ResultView()
}
