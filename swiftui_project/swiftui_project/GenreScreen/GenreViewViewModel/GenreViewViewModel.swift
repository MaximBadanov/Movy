import Combine

class GenreViewViewModel: ObservableObject  {
        private var subscriber: AnyCancellable?
        private let dataManager: DataManager
    
        init() {
            guard let network = DIContainer.shared.injectDependency(
                dependency: NetworkService()) else {
                fatalError("Service not found in DI container")
            }
            dataManager = DataManager(network: network)
        }
    }

extension GenreViewViewModel {
    func fetchMovies(genreId: Int)  {
            let requestModel: RequestModel<MovieResponse> = RequestModel(
                urlString: Urls.moviesByGenre.rawValue + String(genreId),
                header: Headers.movieDB.header,
                httpMethod: HTTPMethods.get,
                modelToParse: MovieResponse.self)
            subscriber = dataManager.fetchGenres(requestModel: requestModel)
                .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        print("Finished")
                    case .failure(let error):
                        print("Finished with error: \(error)")
                    }
                }, receiveValue: { data in
                    data.results.forEach {
                        print("Movie: \($0.title), poster: \($0.poster)")
                    }
                })
        }
}

