import SwiftUI


func createGenreView(backgroundColor: Color,
                     genreEmoji: String,
                     genreName: String) -> some View {
    
    return VStack(spacing: UISize.size8) {
        ZStack(alignment: .center) {
            Rectangle()
                .genreFrame(backgroundColor: backgroundColor)
            Text(genreEmoji)
                .textStyle(size: UISize.size24,
                           weight: .regular)
        }
        .padding(UISize.size8)
        Text(genreName)
            .textStyle(size: UISize.size16,
                       weight: .regular)
    }
}




