import SwiftUI
import Combine

struct ResultView: View {
    @State private var subcriber: AnyCancellable?
    
    private let network = NetworkService()
    private let requestModel = RequestModel(
        urlString: Urls.moviedbGenres.rawValue,
        header: Headers.movieDB.header,
        httpMethod: HTTPMethods.get,
        modelToParse: GenresResponse.self)
    
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
                subcriber = network.makeRequest(requestModel: requestModel)
                    .sink(receiveCompletion: { completion in
                        switch completion {
                        case .finished:
                            print("Finished")
                        case .failure(error: let error):
                            print("Finished with error: \(error)")
                        }
                    }, receiveValue: { genres in
                        genres.genres.forEach { genre in
                            print("\(genre.name) _______ id: \(genre.id)")
                        }
                    })
            }
    }
}

#Preview {
    ResultView()
}
