import Foundation

extension Encodable {
    func convertToDictionary() -> [String: Any]? {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(self)
            guard let dictionary = try
                    JSONSerialization.jsonObject(with: data,
                                                 options: .allowFragments) as? [String: Any]
            else {
                return nil
            }
            return dictionary
        } catch {
            print("Error converting struct to dictionary: \(error.localizedDescription)")
            return nil
        }
    }
}
