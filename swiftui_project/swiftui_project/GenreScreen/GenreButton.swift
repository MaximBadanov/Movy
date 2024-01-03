import SwiftUI


struct GenreButton: View {
    @State private var isSelected: Bool = false
    var backgroundColor: Color
    var emoji: String
    var body: some View {
        Button(emoji) {
            isSelected.toggle()
        }
        .textStyle(size: UISize.size24, weight: .regular)
        .genreButtonStyle(backgroundColor: backgroundColor)
        .overlay(
            RoundedRectangle(cornerRadius: UISize.size8)
                .stroke(isSelected ? backgroundColor : Color.clear, lineWidth: 4)
        )
    }
}

