import SwiftUI

struct MovyAsyncImage: View {
    let url: String
    private let cacheService = CacheService<UIImage>()
    private let opacity: Double = 0.1
    
    init(url: String) {
        self.url = url
    }
    
    var body: some View {
        if let cachedImage = cacheService.getObject(forKey: url) {
            Image(uiImage: cachedImage)
        } else {
            AsyncImage(url: URL(string: url)) { image in
                image.resizable()
                    .frame(maxWidth: .infinity)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(UISize.size16)
                    .onAppear {
                        cacheService.saveObject(
                            image.snapshot(),
                            forKey: url
                        )
                    }
            } placeholder: {
                Image(systemName: "movieclapper")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(UISize.size8)
                    .aspectRatio(contentMode: .fit)
                    .opacity(opacity)
                    .foregroundColor(.customGray)
            }
        }
    }
}
