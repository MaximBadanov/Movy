import SwiftUI
import Combine


struct ResultView: View {
    let title: String
    let poster: String
    
    
    var body: some View {
        MovieView(title: title, poster: poster)
            .withLoader(isLoading: true)
    }
}

#Preview {
    ResultView(title: "Title", poster: "Poster")

}
