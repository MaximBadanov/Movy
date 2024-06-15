import SwiftUI

struct ResultView: View {
    let title: String
    let poster: String
<<<<<<< HEAD
    
    
    var body: some View {
        MovieView(title: title, poster: poster)
=======
    let genres: String
    
    
    var body: some View {
        MovieView(title: title, poster: poster, genres: genres)
>>>>>>> task_k_work
            .withLoader(isLoading: true)
    }
}

#Preview {
<<<<<<< HEAD
    ResultView(title: "Title", poster: "Poster")
=======
    ResultView(title: "Title", poster: "Poster", genres: "Genres")
>>>>>>> task_k_work

}
