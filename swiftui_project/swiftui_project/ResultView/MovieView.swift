import SwiftUI

struct MovieView: View {
    let title: String
    let poster: String
    
    private let aspectRatioPoster: Double = 2.0/3.0
    private let opacity: Double = 0.1
    
    var body: some View {
        VStack(spacing: UISize.size8) {
            Text("Your movie for today")
                .textStyle(
                    size: UISize.size24,
                    weight: .bold
                )
                .padding(.bottom, UISize.size16)
            AsyncImage(url: URL(string: Urls.posterURL.rawValue + poster)) { image in
                image.resizable()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(UISize.size16)
                    .aspectRatio(aspectRatioPoster, contentMode: .fit)
            } placeholder: {
                Spacer(minLength: UISize.size16)
                Image(systemName: "movieclapper")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(UISize.size8)
                    .aspectRatio(contentMode: .fit)
                    .opacity(opacity)
                    .foregroundColor(.customGray)
                Spacer(minLength: UISize.size8)

            }
            .padding(.horizontal, UISize.size32)
            Text(title)
                .textStyle(
                    size: UISize.size40,
                    weight: .heavy
                )
                .padding(.horizontal, UISize.size16)
            Text(GenreButtonViewModel.shared.genres[0])
                .textStyle(
                    size: UISize.size24,
                    weight: .medium
                )
                .foregroundColor(.customGray)
            Spacer(minLength: UISize.size8)
            Text("This movie is showed for you just once")
                .textStyle(
                    size: UISize.size16,
                    weight: .light
                )
        }
    }
}

#Preview {
    MovieView(title: "Movie Title", poster: "Movie Poster")
}

