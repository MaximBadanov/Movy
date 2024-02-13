protocol NetworkServiceProtocol {
    func makeRequest<T: Decodable>(urlString: String,
                                   httpMethod: HTTPMethods,
                                   modelToParse: T.Type)
    
}
