import SwiftUI

class GenreButtonViewModel: ObservableObject {
    @Published var genres: [String] = []
    
    
    func addGenre(_ id: String) {
        if !genres.contains(id) {
            genres.append(id)
        }
    }
    
    func removeGenre(_ id: String) {
        if genres.contains(id) {
            genres.removeAll(where: { $0 == id })
        }
    }
}
