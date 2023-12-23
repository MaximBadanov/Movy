import SwiftUI


extension View {
    func genreFrame(isSelected: Bool, backgroundColor: Color) -> some View {
        modifier(GenreStyle(isSelected: isSelected,
                            backgroundColor: backgroundColor))
    }
}
