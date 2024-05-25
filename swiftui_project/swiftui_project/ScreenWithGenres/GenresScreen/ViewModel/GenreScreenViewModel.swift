import Combine
import SwiftUI
import Foundation

class GenreScreenViewModel: ObservableObject {
    @Published private(set) var movie: MovieResponseModel?
    
    private var subscriber: AnyCancellable?
    private let dataManager: DataManager
    
    var genresId: [String]  {
        UserDefaults.standard.object(forKey: "selectedGenres")  as? [String] ?? [String]()
    }
    
    init() {
        dataManager = DataManager()
    }
    
    func convertIdsInString(genres: [Int]) -> String {
        let genreStrings = genres.map { String($0).convertIdToString }
        return genreStrings.joined(separator: " ")
    }
}

extension GenreScreenViewModel: GenreScreenViewModelProtocol {
    func fetchMoviesByGenre(genreIDs: [String]) {
        let requestModel = RequestModel(
            urlString: Urls.movieByGenres.rawValue,
            header: Headers.movieDB.header,
            httpMethod: HTTPMethods.get,
            modelToParse: MovieResponse.self
        )
        subscriber = dataManager.fetchMovieByGenres(requestModel: requestModel,
                                                    genreIDs: genreIDs)
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
                print(genreIDs)
                print("Movie: \(movie.title ), Poster: \(movie.poster), genres: \(self.convertIdsInString(genres: movie.genres))")
                self.movie = MovieResponseModel(title: movie.title , poster: movie.poster, genres: movie.genres )
            }
            )
    }
}

