import SwiftUI


extension View {
    func genreFrame(backgroundColor: Color) -> some View {
        modifier(GenreStyle(backgroundColor: backgroundColor))
    }
}
