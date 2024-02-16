protocol NetworkServiceProtocol {
    func makeRequest<T: Decodable>(urlString: String,
                                   header: [String:String],
                                   httpMethod: HTTPMethods,
                                   modelToParse: T.Type)
    
}
