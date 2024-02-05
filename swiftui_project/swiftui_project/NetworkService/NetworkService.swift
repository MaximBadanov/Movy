import Foundation
class NetworkService: NetworkServiceProtocol {
    func makeRequest() {
        let headers = [
            "accept": Header.accept.rawValue,
            "Authorization": Header.token.rawValue
        ]
        let urlString = API.moviedbGenres.rawValue
        guard let url = URL(string: urlString) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethods.get.rawValue
        request.allHTTPHeaderFields = headers
        URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
            if error != nil {
                print("requestJSON error")
            }
            guard let data = data else { return }
            guard let response = response as? HTTPURLResponse else { fatalError() }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                let genres = try JSONDecoder().decode(GenresModel.self, from: data)
                print("requestJSON success")
                print(genres.genres[0])
                print(json)
            } catch {
                print("=== Response Code: \(response.statusCode)")
            }
        }.resume()
    }
}
