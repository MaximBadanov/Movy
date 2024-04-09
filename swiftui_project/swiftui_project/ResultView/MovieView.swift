import SwiftUI

struct MovieView: View {
    @State var title: String
    @State var poster: String
    
    private let baseURL = "https://image.tmdb.org/t/p/"
    private let posterSize = "w300"
    
    var body: some View {
        VStack(spacing: UISize.size8) {
            Text("Your movie for today")
                .textStyle(
                    size: UISize.size24,
                    weight: .bold
                )
            Spacer(minLength: UISize.size8)
            AsyncImage(url: URL(string: baseURL + posterSize + poster))
                .cornerRadius(UISize.size16)
            Text(title)
                .textStyle(
                    size: UISize.size40,
                    weight: .heavy
                )
            Text("Genre")
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

