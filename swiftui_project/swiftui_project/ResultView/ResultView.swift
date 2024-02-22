import SwiftUI

struct ResultView: View {
    let network = NetworkService()
    let requestModel = RequestModel(urlString: Urls.moviedbGenres.rawValue,
                                    header: Headers.movieDB.header,
                                    httpMethod: HTTPMethods.get,
                                    modelToParse: GenresResponse.self)
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
                network.makeRequest(requestModel: requestModel)
            }
    }
}

#Preview {
    ResultView()
}
