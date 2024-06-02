protocol GenreScreenViewModelProtocol {
    func fetchMoviesByGenre(completion: @escaping (Bool) -> Void)
}
