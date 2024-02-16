import SwiftUI

struct ResultView: View {
    let network = NetworkService()
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
                network.makeRequest(urlString: Urls.moviedbGenres.rawValue,
                                    header: Headers.headerForGenres.header,
                                    httpMethod: HTTPMethods.get,
                                    modelToParse: GenresResponse.self)
            }
    }
}

#Preview {
    ResultView()
}
