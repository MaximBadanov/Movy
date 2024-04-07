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
    func fetchMoviesByGenre(requestModel: RequestModel<MovieResponse>)  {
            subscriber = dataManager.fetchGenres(requestModel: requestModel)
                .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        print("Finished")
                    case .failure(let error):
                        print("Finished with error: \(error)")
                    }
                }, receiveValue: { data in
                    guard let movie = data.results.randomElement() else { return }
                    print("Movie: \(String(describing: movie.title)), Poster: \(String(describing: movie.poster))")
                })
        }
}

