import SwiftUI

struct MovieView: View {
    var body: some View {
        Image("joker")
            .cornerRadius(UISize.size16)
        Text("Joker")
            .textStyle(size: UISize.size40,
                       weight: .heavy)
        Text("Thriller")
            .textStyle(size: UISize.size24,
                       weight: .medium)
            .foregroundColor(.customGray)
    }
}

#Preview {
    MovieView()
}
