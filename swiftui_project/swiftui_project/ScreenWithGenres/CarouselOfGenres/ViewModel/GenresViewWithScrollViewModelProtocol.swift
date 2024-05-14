protocol GenresViewWithScrollViewModelProtocol {
    func fetchGenres()
    func isSelected(_ id: String) -> Bool
    func toggleSelection(_ id: String)
}
