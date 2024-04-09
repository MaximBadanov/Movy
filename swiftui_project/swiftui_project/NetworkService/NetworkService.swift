import Foundation
import Combine


class NetworkService: NetworkServiceProtocol {
    func makeRequest<T: Decodable>(requestModel: RequestModel<T>) -> AnyPublisher<T,Error> {
        guard let url = URL(string: requestModel.urlString) else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }
        var request = URLRequest(url: url)
        request.httpMethod = requestModel.httpMethod.rawValue
        request.allHTTPHeaderFields = requestModel.header
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    func makeRequest<T: Decodable>(requestModel: RequestModel<T>, genres: [String]) -> AnyPublisher<T,Error> {
        let genresString = genres.joined(separator: ",")
        guard let url = URL(string: requestModel.urlString + genresString) else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }
        var request = URLRequest(url: url)
        request.httpMethod = requestModel.httpMethod.rawValue
        request.allHTTPHeaderFields = requestModel.header
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
