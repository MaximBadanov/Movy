protocol GenresViewWithScrollViewModelProtocol {
    func fetchGenres() 
    func insertGenres(completion: @escaping ([GenreResponseModel]) -> Void)
}
