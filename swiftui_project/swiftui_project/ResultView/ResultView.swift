import SwiftUI

struct ResultView: View {
    
    var body: some View {
        VStack {
            Text("Your movie for today")
                .textStyle(size: UISize.size24,
                           weight: .bold)
            Spacer(minLength: UISize.size8)
            MovieView()
            Spacer(minLength: UISize.size8)
            Text("This movie is showed for you just once")
                .textStyle(size: UISize.size16,
                           weight: .light)
        }
                .withLoader()
    }
}

#Preview {
    ResultView()
}
