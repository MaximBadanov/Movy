import SwiftUI

struct MovieView: View {
    let title: String
    let posterImage: UIImage?
    let genres: String
    
    private let lineLimit: Int = 3
    
    var body: some View {
        VStack(spacing: UISize.size8) {
            if let image = posterImage {
                Text("Your movie for today")
                    .textStyle(
                        size: UISize.size24,
                        weight: .bold
                    )
                Spacer()
                Image(uiImage: image)
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(UISize.size16)
                Text(title)
                    .lineLimit(lineLimit)
                    .textStyle(
                        size: UISize.size40,
                        weight: .heavy
                    )
                Text(genres)
                    .textStyle(
                        size: UISize.size16,
                        weight: .medium
                    )
                    .foregroundColor(.customGray)
                Spacer()
                Text("This movie is showed for you just once")
                    .textStyle(
                        size: UISize.size16,
                        weight: .light
                    )
            } else {
                NoPosterScreen(title: title, genres: genres)
            }
        }
        .padding(.horizontal, UISize.size32)
    }
}
