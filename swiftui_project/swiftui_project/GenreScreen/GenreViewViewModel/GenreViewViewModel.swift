import Combine
import SwiftUI

class GenreViewViewModel: ObservableObject  {
    var movie: MovieResponseModel?
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
    func fetchMoviesByGenre(requestModel: RequestModel<MovieResponse>, genres: [String]) {
        subscriber = dataManager.fetchMovieByGenres(requestModel: requestModel, genres: genres)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print("Finished with error: \(error)")
                }
            }, receiveValue: {  data in
                guard let movie = data.results.randomElement() else { return }
                print("Movie: \(String(describing: movie.title)), Poster: \(String(describing: movie.poster))")
                self.movie = MovieResponseModel(title: movie.title, poster: movie.poster)
                if self.movie != nil {
                    print(self.movie?.title ?? "no title")
                }
            })
    }
}

