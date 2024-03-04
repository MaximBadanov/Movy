import SwiftUI
import Combine


protocol DataManagerProtocol {
    var network: NetworkServiceProtocol { get }
    func fetchGenres<T: Decodable>(requestModel: RequestModel<T>) -> AnyCancellable
}
