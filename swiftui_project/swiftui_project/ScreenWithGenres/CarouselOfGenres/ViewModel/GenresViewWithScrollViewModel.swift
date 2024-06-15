import Combine
import SwiftUI

class GenresWithScrollViewModel: ObservableObject {
    @Published var fetchedGenres: [GenreResponseModel] = []
    @Published var selectedGenres: [String] = []
    
    private var subscriber: AnyCancellable?
    private let dataManager: DataManager
    
    init() {
        dataManager = DataManager()
    }
}

extension GenresWithScrollViewModel: GenresViewWithScrollViewModelProtocol {
    func fetchGenres() {
        let requestModel: RequestModel<GenresResponse> = RequestModel(
            urlString: Urls.moviedbGenres.rawValue,
            header: Headers.movieDB.header,
            httpMethod: HTTPMethods.get,
            modelToParse: GenresResponse.self
        )
        subscriber = dataManager.fetchGenres(requestModel: requestModel)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Genres successfully loaded")
                case .failure(let error):
                    print("Finished with error: \(error)")
                }
            }, receiveValue: { data in
                self.fetchedGenres = data.genres
            })
    }
    
    func isSelected(_ id: String) -> Bool {
        selectedGenres.contains(id)
    }
    
    func toggleSelection(_ id: String) {
        if isSelected(id) {
            selectedGenres.removeAll(where: { $0 == id })
        } else {
            selectedGenres.append(id)
        }
        print("Selected genres IDs: \(selectedGenres)")
    }
}
