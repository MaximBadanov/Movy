protocol GenreScreenViewModelProtocol {
    func fetchMoviesByGenre(requestModel: RequestModel<MovieResponse>,
                            genreIDs: [String])
}
