import SwiftUI


struct GenresViewWithScroll: View {

    var body: some View {
        ScrollView(.horizontal,
                   showsIndicators: false) {
            HStack(spacing: UISize.size8) {
                ForEach(AllGenres.allCases, id: \.self) { genre in
                    GenreButton(
                        title: genre.instance.title,
                        emoji: genre.instance.emoji,
                        backgroundColor: genre.instance.color,
                        id: genre.instance.id
                    )
                }
            }
        }
    }
}

#Preview {
    GenresViewWithScroll()
}
