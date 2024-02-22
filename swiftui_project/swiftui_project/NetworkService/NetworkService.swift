import Foundation
class NetworkService: NetworkServiceProtocol {
    func makeRequest<T: Decodable>(requestModel: RequestModel<T>) {
        let header = requestModel.header
        guard let url = URL(string: requestModel.urlString) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = requestModel.httpMethod.rawValue
        request.allHTTPHeaderFields = header
        URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
            if error != nil {
                print("requestJSON error")
            }
            guard let data = data else { return }
            guard let response = response as? HTTPURLResponse else { fatalError() }
            do {
//                пока оставил для проверки работы от сюда
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                let decodedData = try JSONDecoder().decode(requestModel.modelToParse.self, from: data)
                print("requestJSON success")
                print(decodedData)
                print(json)
//                вот до сюда
            } catch {
                print("=== Response Code: \(response.statusCode)")
            }
        }.resume()
    }
}
