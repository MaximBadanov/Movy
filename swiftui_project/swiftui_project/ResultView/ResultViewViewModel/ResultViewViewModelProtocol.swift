import Combine


protocol ResultViewViewModelProtocol {
    func fetchGenres() -> AnyCancellable?
}
