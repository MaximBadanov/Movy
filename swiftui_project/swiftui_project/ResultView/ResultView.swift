import SwiftUI

struct ResultView: View {
    let title: String
    let posterImage: UIImage?
    let genres: String

    var body: some View {
        MovieView(title: title, posterImage: posterImage, genres: genres)
    }
}
