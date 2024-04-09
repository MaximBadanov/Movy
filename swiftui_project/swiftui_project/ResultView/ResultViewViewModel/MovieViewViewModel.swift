import SwiftUI
import Combine


class MovieViewViewModel: ObservableObject {
   @ObservedObject private var genreViewModel = GenreViewViewModel()
    var title:  String {
        return genreViewModel.movie?.title ?? ""
    }
}

extension MovieViewViewModel: MovieViewViewModelProtocol {

}
