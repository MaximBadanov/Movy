import Foundation
import SwiftUI

final class CacheService<T: AnyObject>: CacheProtocol {
    private let cache = NSCache<NSString, T>()
    
    func getObject(forKey key: String) -> T? {
        let cacheKey = NSString(string: key)
        print("cached object got")
        return cache.object(forKey: cacheKey)
    }
    
    func saveObject(_ object: T, forKey key: String) {
        let cacheKey = NSString(string: key)
        cache.setObject(object, forKey: cacheKey)
        print("cached object saved")
    }
    
    func removeObject(forKey key: String) {
        let cacheKey = NSString(string: key)
        cache.removeObject(forKey: cacheKey)
        print("cached object removed")
    }
}
