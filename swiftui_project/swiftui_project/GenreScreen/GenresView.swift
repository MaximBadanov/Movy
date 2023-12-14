import SwiftUI


struct GenresView: View {
    var body: some View {
        ScrollView(.horizontal,
                   showsIndicators: false) {
            HStack(spacing: UISize.size8) {
                createGenreView(backgroundColor: .red,
                                genreEmoji: Genres.action.instance.emoji,
                                genreName: Genres.action.instance.title)
                createGenreView(backgroundColor: .blue,
                                genreEmoji: Genres.advanture.instance.emoji,
                                genreName: Genres.advanture.instance.title)
                createGenreView(backgroundColor: .orange,
                                genreEmoji: Genres.animation.instance.emoji,
                                genreName: Genres.animation.instance.title)
                createGenreView(backgroundColor: .cyan,
                                genreEmoji: Genres.comedy.instance.emoji,
                                genreName: Genres.comedy.instance.title)
                createGenreView(backgroundColor: .gray,
                                genreEmoji: Genres.crime.instance.emoji,
                                genreName: Genres.crime.instance.title)
                createGenreView(backgroundColor: .purple,
                                genreEmoji: Genres.fantasy.instance.emoji,
                                genreName: Genres.fantasy.instance.title)
                createGenreView(backgroundColor: .green,
                                genreEmoji: Genres.sience.instance.emoji,
                                genreName: Genres.sience.instance.title)
                createGenreView(backgroundColor: .teal,
                                genreEmoji: Genres.horror.instance.emoji,
                                genreName: Genres.horror.instance.title)
            }
        }
    }
}

#Preview {
    GenresView()
}
