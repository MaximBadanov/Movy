import SwiftUI

class GenreButtonViewModel: ObservableObject {
    @Published var genres: [String] = []
    
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
}

extension GenreButtonViewModel: GenreButtonViewModelProtocol {
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
