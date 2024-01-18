import SwiftUI

struct MovieView: View {
    let movieForToday = "Your movie for today"
    let showedOnce = "This movie is showed for you just once"
    
    var body: some View {
        VStack(spacing: UISize.size8) {
            Text(movieForToday)
                .textStyle(size: UISize.size24,
                           weight: .bold)
            Spacer(minLength: UISize.size8)
            Image("joker")
                .cornerRadius(UISize.size16)
            Text("Joker")
                .textStyle(size: UISize.size40,
                           weight: .heavy)
            Text("Thriller")
                .textStyle(size: UISize.size24,
                           weight: .medium)
                .foregroundColor(.customGray)
            Spacer(minLength: UISize.size8)
            Text(showedOnce)
                .textStyle(size: UISize.size16,
                           weight: .light)
        }
    }
}

#Preview {
    MovieView()
}
