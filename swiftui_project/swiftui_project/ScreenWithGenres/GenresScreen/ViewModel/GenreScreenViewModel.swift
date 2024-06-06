import Combine
import SwiftUI

class GenreScreenViewModel: ObservableObject {
    @Published private(set) var movie: MovieResponseModel?
    @Published var genresId: [String] = []
    @Published var stringOfGenres: String = ""
    @Published var navigateToResult = false
    
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
    func fetchMoviesByGenre() {
        let requestModel = RequestModel(
            urlString: Urls.movieByGenres.rawValue,
            header: Headers.movieDB.header,
            httpMethod: HTTPMethods.get,
            modelToParse: MovieResponse.self
        )
        subscriber = dataManager.fetchMovieByGenres(requestModel: requestModel,
                                                    genreIDs: self.genresId)
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
                print(self.genresId)
                print("""
                      Movie: \(movie.title),
                      Poster: \(movie.poster),
                      Genres: \(self.convertIdsInString(genres: movie.genres))
                      """)
                self.movie = MovieResponseModel(title: movie.title,
                                                poster: movie.poster,
                                                genres: movie.genres)
                self.stringOfGenres = self.convertIdsInString(genres: movie.genres)
                self.navigateToResult.toggle()
            })
    }
}
