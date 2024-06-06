import SwiftUI

struct GenresScreen: View {
    @ObservedObject private var genreScreenViewModel = GenreScreenViewModel()
    @ObservedObject private var genresWithScrollViewModel = GenresWithScrollViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: UISize.size8) {
                Spacer(minLength: UISize.size8)
                Text("Choose Genres")
                    .padding(.leading, UISize.size24)
                    .textStyle(size: UISize.size32, weight: .bold)
                GenresViewWithScroll(viewModel: genresWithScrollViewModel)
                Spacer(minLength: UISize.size8)
                HStack(spacing: UISize.size8) {
                    Spacer(minLength: UISize.size8)
                        .padding(.horizontal, UISize.size24)
                    Button("Get Movie",
                           action: {
                        genreScreenViewModel.fetchMoviesByGenre()
                    })
                    .buttonStyle(.primaryStyle)
                    .padding(.trailing, UISize.size24)
                    .navigationDestination(
                        isPresented: $genreScreenViewModel.navigateToResult,
                        destination: { ResultView(
                            title: genreScreenViewModel.movie?.title ?? "no title",
                            poster: genreScreenViewModel.movie?.poster ?? "no poster",
                            genres: genreScreenViewModel.stringOfGenres)
                        }
                    )
                }
            }
            .padding(.bottom, UISize.size16)
        }
        .onAppear {
            genresWithScrollViewModel.$selectedGenres
                .assign(to: &genreScreenViewModel.$genresId)
        }
    }
}

#Preview {
    GenresScreen()
}
