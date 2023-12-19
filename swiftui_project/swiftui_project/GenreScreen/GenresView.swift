import SwiftUI


struct GenresView: View {
    var body: some View {
        ScrollView(.horizontal,
                   showsIndicators: false) {
            HStack(spacing: UISize.size8) {
                Genres.createGenreView(backgroundColor: .red,
                                       genre: .action)
                Genres.createGenreView(backgroundColor: .blue,
                                       genre: .advanture)
                Genres.createGenreView(backgroundColor: .orange,
                                       genre: .animation)
                Genres.createGenreView(backgroundColor: .cyan,
                                       genre: .comedy)
                Genres.createGenreView(backgroundColor: .gray,
                                       genre: .crime)
                Genres.createGenreView(backgroundColor: .purple,
                                       genre: .fantasy)
                Genres.createGenreView(backgroundColor: .green,
                                       genre: .sience)
                Genres.createGenreView(backgroundColor: .teal,
                                       genre: .horror)
            }
        }
    }
}

#Preview {
    GenresView()
}
