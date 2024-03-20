import Combine


protocol ResultViewViewModelProtocol {
    func fetchGenres<T: Decodable>(requestModel: RequestModel<T>) -> AnyPublisher<T, Error>
}
