import SwiftUI


struct GenresScreen: View {
    @ObservedObject private var viewModel = GenreViewViewModel()
    
    var body: some View {
        VStack(alignment: .leading,
               spacing: UISize.size8) {
            Spacer(minLength: UISize.size8)
            Text("Choose Genres")
                .padding(.leading, UISize.size24)
                .textStyle(
                    size: UISize.size32,
                    weight: .bold
                )
            GenresViewWithScroll()
            Spacer(minLength: UISize.size8)
            HStack(spacing: UISize.size8) {
                Spacer(minLength: UISize.size8)
                    .padding(.horizontal, UISize.size24)
                NavigationLink("Continue",
                               destination: ResultView()                .onAppear {
                    viewModel.fetchMoviesByGenre(
                        requestModel: RequestModel(
                            urlString: Urls.animation.rawValue,
                            header: Headers.movieDB.header,
                            httpMethod: HTTPMethods.get,
                            modelToParse: MovieResponse.self))
                })
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
