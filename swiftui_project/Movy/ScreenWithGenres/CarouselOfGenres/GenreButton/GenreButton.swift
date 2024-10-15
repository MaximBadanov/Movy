import SwiftUI

struct GenreButton: View {
    let title: String
    let emoji: String
    let backgroundColor: Color
    let isSelected: Bool
    let toggleSelection: () -> Void

    var body: some View {
        VStack(spacing: UISize.size8) {
            Button(action: {
                toggleSelection()
            }) {
                Text(emoji)
                    .textStyle(
                        size: UISize.size24,
                        weight: .regular
                    )
            }
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

