import Foundation
class NetworkService: NetworkServiceProtocol {
    func makeRequest() {
        let headers = [
            "accept": Header.accept.meaning,
            "Authorization": Header.token.meaning
        ]
        let urlString = API.moviedbGenres.meaning
        guard let url = URL(string: urlString) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethods.get.method
        request.allHTTPHeaderFields = headers
        URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
            if error != nil {
                print("requestJSON error")
            }
            guard let data = data else { return }
            guard let response = response as? HTTPURLResponse else { fatalError() }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                print("requestJSON success")
                print(json)
            } catch {
                print("=== Response Code: \(response.statusCode)")
            }
        }.resume()
    }
}
