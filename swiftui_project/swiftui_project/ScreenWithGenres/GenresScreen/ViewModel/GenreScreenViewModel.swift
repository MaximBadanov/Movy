import Combine
import SwiftUI

class GenreScreenViewModel: ObservableObject {
    @Published private(set) var movie: MovieResponseModel?
    @Published var genresId: [String] = []
    @Published var stringOfGenres: String = ""
    @Published var navigateToResult = false
    @Published var isLoading = false
    @Published var poster: UIImage?

    private var subscriber: AnyCancellable?
    private let dataManager: DataManager
    private let cacheServive: CacheService<UIImage>

    init() {
        dataManager = DataManager()
        cacheServive = CacheService<UIImage>()
    }

    private func convertIdsInString(genres: [Int]) -> String {
        let genreStrings = genres.map { String($0).convertIdToString }
        return genreStrings.joined(separator: " ")
    }

    private func getOrSaveCachedImage(for key: String) {
        if let cachedImage = cacheServive.getObject(forKey: key) {
            poster = cachedImage
            print("Cached image extracted: \(key)")
        } else {
            decodeImage(from: key) { image in
                switch image {
                case .success(let image):
                    self.poster = image
                    self.cacheServive.saveObject(image, forKey: key)
                    print("New image cached with key: \(key)")
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }

    func decodeImage(from url: String,
                     completion: @escaping (Result<UIImage, Error>) -> Void) {
        guard let fullUrl = URL(string: Urls.posterURL.rawValue + url) else { return }
        URLSession.shared.dataTask(with: fullUrl) { data, _, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                    return
                }
                guard let data = data else { return }
                let image = UIImage(data: data)
                completion(.success(image ?? UIImage()))
                return
            }
        }.resume()
    }
}

extension GenreScreenViewModel: GenreScreenViewModelProtocol {
    func fetchMoviesByGenre() {
        self.isLoading = true
        let requestParams = MovieParameters(randomGenreID: self.genresId.randomElement() ?? "")
            .convertToDictionary()
        let requestModel = RequestModelUniversal<MovieResponse>(
            urlString: Urls.movieByGenres.rawValue,
            httpMethod: HTTPMethods.get,
            header: Headers.movieDB.header,
            parameters: requestParams
        )
        subscriber = dataManager.fetchData(requestModel: requestModel)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print("Finished with error: \(error)")
                    self.navigateToResult = true
                    self.isLoading = false
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
                self.getOrSaveCachedImage(for: movie.poster)
                self.stringOfGenres = self.convertIdsInString(genres: movie.genres)
                self.navigateToResult = true
                self.isLoading = false
            })
    }
}
