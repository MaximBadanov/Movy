import Foundation
import Combine

class GenresViewWithScrollViewModel: ObservableObject {
    private var subscriber: AnyCancellable?
    private let dataManager: DataManager
    @Published var fetchedGenres: [GenreResponseModel] = []
    @Published var genres: [String] = []
    
    init() {
        dataManager = DataManager()
    }
    
    private  func addGenre(_ id: String) {
        if !genres.contains(id) {
            genres.append(id)
        }
    }
    
    private func removeGenre(_ id: String) {
        if genres.contains(id) {
            genres.removeAll(where: { $0 == id })
        }
    }
    
    func isSelectedToogle(isSelected: Bool, id: String) {
        if isSelected {
            addGenre(id)
            print(genres)
        } else {
            removeGenre(id)
            print(genres)
        }
    }
}

extension GenresViewWithScrollViewModel: GenresViewWithScrollViewModelProtocol {
    func fetchGenres(completion: @escaping ([GenreResponseModel]) -> Void)  {
        let requestModel: RequestModel<GenresResponse> = RequestModel(
            urlString: Urls.moviedbGenres.rawValue,
            header: Headers.movieDB.header,
            httpMethod: HTTPMethods.get,
            modelToParse: GenresResponse.self)
        subscriber = dataManager.fetchGenres(requestModel: requestModel)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Genres successfully loaded")
                case .failure(let error):
                    print("Finished with error: \(error)")
                }
            }, receiveValue: { data in
                self.fetchedGenres = data.genres
                completion(self.fetchedGenres)
            })
    }
}

