import SwiftUI
import Combine


protocol DataManagerProtocol {

    func fetchGenres<T: Decodable>(requestModel: RequestModel<T>) -> AnyCancellable
}
