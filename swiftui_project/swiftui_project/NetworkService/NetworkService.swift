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
    
    func makeRequest<T: Decodable>(requestModel: RequestModel<T>, genreIDs: [String]) -> AnyPublisher<T,Error> {
        let urlString = requestModel.urlString
        let parameters: [String: Any] = [
<<<<<<< HEAD
            "with_genres": genreIDs.joined(separator: ","),
            "page": "\(Int.random(in: 1...10))"
=======
            "with_genres": genreIDs.randomElement() ?? "",
            "page": "\(Int.random(in: 1...100))"
>>>>>>> task_k_work
        ]
        guard var urlComponents = URLComponents(string: urlString) else {
            print("Bad URL")
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }
        
        urlComponents.queryItems = parameters.map { URLQueryItem(name: $0.key, value: "\($0.value)") }
        
        guard let url = urlComponents.url else {
            print("Failed to create URL")
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
<<<<<<< HEAD
    
=======
>>>>>>> task_k_work
}

