struct RequestModel<T: Decodable> {
    let urlString: String
    let header: [String:String]
    let httpMethod: HTTPMethods
    let modelToParse: T.Type
}
