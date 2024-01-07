import SwiftUI


struct GenreButton: View {
    @State private var isSelected: Bool = false
    let title: String
    let emoji: String
    let backgroundColor: Color
    
    var body: some View {
        VStack(spacing: UISize.size8) {
            Button(emoji) {
                isSelected.toggle()
            }
            .textStyle(
                size: UISize.size24,
                weight: .regular
            )
            .genreButtonStyle(
                backgroundColor: backgroundColor,
                isSelected: isSelected
            )
            .padding(UISize.size8)
            Text(title)
                .textStyle(
                    size: UISize.size16,
                    weight: .regular
                )
        }
    }
}

