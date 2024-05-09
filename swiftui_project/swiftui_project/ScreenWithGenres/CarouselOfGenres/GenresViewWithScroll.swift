import SwiftUI


struct GenresViewWithScroll: View {
    @State private var genres: [GenreResponseModel] = []
    private let viewModel = GenresViewWithScrollViewModel()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: UISize.size8) {
                ForEach(genres) { genre in
                    GenreButton(title: genre.name,
                                emoji: genre.name.toEmoji,
                                backgroundColor: genre.name.setColor,
                                id: genre.id.description)
                }
            }
        }
        .onAppear {
            viewModel.fetchGenres { genres in
                self.genres = genres
            }
        }
    }
}

#Preview {
    GenresViewWithScroll()
}
