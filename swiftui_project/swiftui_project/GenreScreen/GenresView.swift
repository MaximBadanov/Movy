import SwiftUI


struct GenresView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: UISize.size8) {
                createGenreView(foregroundColor: .red,
                                emogi: "🥊",
                                genre: Genres.action.genre)
                createGenreView(foregroundColor: .blue,
                                emogi: "🪂",
                                genre:  Genres.advanture.genre)
                createGenreView(foregroundColor: .orange,
                                emogi: "🐥",
                                genre: Genres.animation.genre)
                createGenreView(foregroundColor: .cyan,
                                emogi: "😂",
                                genre: Genres.animation.genre)
                
                createGenreView(foregroundColor: .gray,
                                emogi: "🔦",
                                genre: Genres.crime.genre)
                createGenreView(foregroundColor: .purple,
                                emogi: "🦄",
                                genre: Genres.fantasy.genre)
                createGenreView(foregroundColor: .green,
                                emogi: "👽",
                                genre: Genres.sience.genre)
                createGenreView(foregroundColor: .teal,
                                emogi: "🪚",
                                genre: Genres.horror.genre)
            }
        }
    }
}

#Preview {
    GenresView()
}
