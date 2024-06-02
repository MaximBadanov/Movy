import Combine
import SwiftUI
import Foundation

class GenreScreenViewModel: ObservableObject {
    @Published private(set) var movie: MovieResponseModel?
    @Published var genresId: [String] = []
    @Published var stringOfGenres: String = ""
    private var subscriber: AnyCancellable?
    private let dataManager: DataManager

    init() {
        dataManager = DataManager()
    }

   private func convertIdsInString(genres: [Int]) -> String {
        let genreStrings = genres.map { String($0).convertIdToString }
        return genreStrings.joined(separator: " ")
    }
}

extension GenreScreenViewModel: GenreScreenViewModelProtocol {
    func fetchMoviesByGenre(completion: @escaping (Bool) -> Void) {
        let requestModel = RequestModel(
            urlString: Urls.movieByGenres.rawValue,
            header: Headers.movieDB.header,
            httpMethod: HTTPMethods.get,
            modelToParse: MovieResponse.self
        )
        subscriber = dataManager.fetchMovieByGenres(requestModel: requestModel, genreIDs: self.genresId)
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
//                для проверки от сюда
                print(self.genresId)
                print("""
                      Movie: \(movie.title),
                      Poster: \(movie.poster),
                      Genres: \(self.convertIdsInString(genres: movie.genres))
                      """)
//                до сюда, потом уберу
                self.movie = MovieResponseModel(title: movie.title,
                                                poster: movie.poster,
                                                genres: movie.genres)
                self.stringOfGenres = self.convertIdsInString(genres: movie.genres)
                completion(true)
            })
    }
}

