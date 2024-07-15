import SwiftUI

struct ResultView: View {
    let title: String
    let poster: String
    let genres: String
    
    @State private var isLoading: Bool = true
    
    var body: some View {
        MovieView(title: title, poster: poster, genres: genres)
            .isLoading(isLoading: $isLoading)
    }
}

#Preview {
    ResultView(title: "Title", poster: "Poster", genres: "Genres")
    
}
