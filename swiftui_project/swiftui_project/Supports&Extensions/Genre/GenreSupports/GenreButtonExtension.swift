import SwiftUI


extension View {
   func genreButtonStyle(backgroundColor: Color) -> some View {
       buttonStyle(GenreButtonStyle(backgroundColor: backgroundColor))
    }
}
