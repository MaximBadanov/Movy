import SwiftUI

struct GenresScreen: View {
    @StateObject private var genreScreenViewModel = GenreScreenViewModel()
    @StateObject private var genresWithScrollViewModel = GenresWithScrollViewModel()
    @State private var navigateToResult = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: UISize.size8) {
                Spacer(minLength: UISize.size8)
                Text("Choose Genres")
                    .padding(.leading, UISize.size24)
                    .textStyle(size: UISize.size32, weight: .bold)
                GenresViewWithScroll(viewModel: genresWithScrollViewModel,
                                     selectedGenres: $genreScreenViewModel.genresId)
                Spacer(minLength: UISize.size8)
                HStack(spacing: UISize.size8) {
                    Spacer(minLength: UISize.size8)
                        .padding(.horizontal, UISize.size24)
                    Button(action: {
                        genreScreenViewModel.fetchMoviesByGenre()
                        navigateToResult = true
                    }) {
                        Text("Get Movie")
                    }
                    .buttonStyle(.primaryStyle)
                    .padding(.trailing, UISize.size24)
                    .background(
                        NavigationLink(
                            destination: ResultView(
                                title: genreScreenViewModel.movie?.title ?? "no title",
                                poster: genreScreenViewModel.movie?.poster ?? "no poster",
                                genres: genreScreenViewModel.stringOfGenres
                            ),
                            isActive: $navigateToResult
                        ) { }
                    )
                    //                    почему-то  не работает корректно
                    //                    .navigationDestination(
                    //                        isPresented: $navigateToResult,
                    //                        destination: { ResultView(
                    //                            title: genreScreenViewModel.movie?.title ?? "no title",
                    //                            poster: genreScreenViewModel.movie?.poster ?? "no poster",
                    //                            genres: genreScreenViewModel.stringOfGenres
                    //                        )}
                    //                    )
                }
            }
            .padding(.bottom, UISize.size16)
        }
    }
}

#Preview {
    GenresScreen()
}
