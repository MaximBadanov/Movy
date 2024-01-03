import SwiftUI


struct GenresViewWithScroll: View {
    var body: some View {
        ScrollView(.horizontal,
                   showsIndicators: false) {
            HStack(spacing: UISize.size8) {
                ForEach(AllGenres.allCases, id: \.self) { genre in
                    VStack(spacing: UISize.size8) {
                        GenreButton(
                            backgroundColor: genre.instance.color,
                            emoji: genre.instance.emoji
                        )
                        .padding(UISize.size8)
                        Text(genre.instance.title)
                            .textStyle(size: UISize.size16, weight: .regular)
                    }
                }
            }
        }
    }
}

#Preview {
    GenresViewWithScroll()
}
