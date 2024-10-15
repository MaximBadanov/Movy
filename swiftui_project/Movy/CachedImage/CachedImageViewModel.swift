import SwiftUI

class CachedImageViewModel: ObservableObject {
    @Published var downloadedImage: UIImage?
    
    let cacheService = DIContainer.shared.injectDependency(dependency: CacheService<UIImage>())
    
    func loadImage(from urlString: String) {
        if let cachedImage = cacheService?.getObject(forKey: urlString) {
            self.downloadedImage = cachedImage
        } else {
            downloadedImage = nil
            downloadImage(from: urlString)
        }
    }
    
    private func downloadImage(from urlString: String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let self = self else { return }
            if error != nil  { return }
            guard let data = data,
                  let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.cacheService?.saveObject(image, forKey: urlString)
                self.downloadedImage = image
            }
        }
        task.resume()
    }
}
