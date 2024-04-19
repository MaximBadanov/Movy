import SwiftUI

protocol GenreViewViewModelProtocol {
    func fetchMoviesByGenre(requestModel: RequestModel<MovieResponse>, genreIDs: [String])
}

