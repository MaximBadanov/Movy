import SwiftUI


struct GenresScreen: View {
    var body: some View {
        VStack(alignment: .leading,
               spacing: UISize.size8) {
            Spacer(minLength: UISize.size8)
            Text("Choose Genres")
                .padding(.leading,
                         UISize.size24)
                .textStyle(size: UISize.size32,
                           weight: .bold)
            GenresViewWithScroll()
            Spacer(minLength: UISize.size8)
            HStack(spacing: UISize.size8) {
                Spacer(minLength: UISize.size8)
                    .padding(.horizontal, UISize.size24)
                Button("Continue") {
                    //
                }
                .buttonStyle(.primaryStyle)
                .padding(.trailing, UISize.size24)
            }
        }
               .padding(.bottom, UISize.size16)
    }
}

#Preview {
    GenresScreen()
}
