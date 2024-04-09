import SwiftUI

protocol GenreViewViewModelProtocol {
    func fetchMoviesByGenre(requestModel: RequestModel<MovieResponse>, genres: [String])
}
