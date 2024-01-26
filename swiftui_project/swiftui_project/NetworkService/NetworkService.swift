import Foundation
class NetworkService: NetworkServiceProtocol {
    func fetchMovies() {
        let headers = [
            "accept": "application/json",
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwOWE3YzQ2YmM3ZjA2NmUyZDEwNTIzYzk3MjAyYzhiZSIsInN1YiI6IjY1YjNlZmEyNTU0MWZhMDE2NGIxOGE3YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ampyZBOltOkms_AAhwoNvF0Mt1DfeVMdYqafERFv-Ag"
        ]
        
        let request = NSMutableURLRequest(url: URL(
            string: "https://api.themoviedb.org/3/genre/movie/list?language=en")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("requestJSON error")
                }
                guard let data = data else { return }
                guard let response = response as? HTTPURLResponse else { fatalError() }
                do {
                    let json = try JSONSerialization.jsonObject(with: data)
                    print("requestJSON success")
                    print(json)
                } catch {
                    print("=== Response Code: \(response.statusCode)")
                }
            }
        }.resume()
    }
    
    func decodeImage() {
        print("декодировали url в image")
    }
}
