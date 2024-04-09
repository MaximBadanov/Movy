import Combine
import SwiftUI
import Foundation

class GenreViewViewModel: ObservableObject {
    @Published var movie: MovieResponseModel?
    private var subscriber: AnyCancellable?
    private let dataManager: DataManager
    
    init() {
        guard let network = DIContainer.shared.injectDependency(dependency: NetworkService()) else {
            fatalError("Service not found in DI container")
        }
        dataManager = DataManager(network: network)
    }
}

extension GenreViewViewModel: GenreViewViewModelProtocol {
    func fetchMoviesByGenre(requestModel: RequestModel<MovieResponse>, genres: [String]) {
        subscriber = dataManager.fetchMovieByGenres(requestModel: requestModel, genres: genres)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print("Finished with error: \(error)")
                }
            }, receiveValue: { data in
                guard let movie = data.results.randomElement() else { return }
                print("Movie: \(movie.title ), Poster: \(movie.poster )")
                self.movie = MovieResponseModel(title: movie.title , poster: movie.poster )
            }
            )
    }
}


