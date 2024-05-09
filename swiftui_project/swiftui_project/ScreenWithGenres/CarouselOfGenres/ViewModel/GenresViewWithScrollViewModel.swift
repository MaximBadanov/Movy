import Foundation
import Combine

class GenresViewWithScrollViewModel: ObservableObject {
    private var subscriber: AnyCancellable?
    private let dataManager: DataManager
    @Published var fetchedGenres: [GenreResponseModel] = []
    
    init() {
        dataManager = DataManager()

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
