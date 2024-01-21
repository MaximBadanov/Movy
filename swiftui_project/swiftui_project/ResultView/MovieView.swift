import SwiftUI

struct MovieView: View {
    let jokerMovie = Movie(
        movieTitle: "Joker" ,
        genre: "Thriller",
        posterName: "joker"
    )
    
    var body: some View {
        VStack(spacing: UISize.size8) {
            Text("Your movie for today")
                .textStyle(
                    size: UISize.size24,
                    weight: .bold
                )
            Spacer(minLength: UISize.size8)
            Image(jokerMovie.posterName)
                .cornerRadius(UISize.size16)
            Text(jokerMovie.movieTitle)
                .textStyle(
                    size: UISize.size40,
                    weight: .heavy
                )
            Text(jokerMovie.genre)
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
    MovieView()
}
