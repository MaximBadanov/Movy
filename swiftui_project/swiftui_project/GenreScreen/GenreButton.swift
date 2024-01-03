import SwiftUI

struct GenreButton: View {
    @State private var isSelected: Bool = false
    var backgroundColor: Color
    var emoji: String
    var body: some View {
        Button(action: {
            withAnimation(.linear(duration: 0.1)) {
                isSelected.toggle()
            }
        }) {
            ZStack(alignment: .center) {
                Color(backgroundColor)
                    .frame(width: UISize.size64,
                           height: UISize.size64)
                    .opacity(0.5)
                    .cornerRadius(UISize.size8)
                    .overlay(
                        RoundedRectangle(cornerRadius: UISize.size8)
                            .stroke(isSelected ? backgroundColor : Color.clear, lineWidth: 4)
                    )
                Text(emoji)
                    .textStyle(size: UISize.size24, weight: .regular)
            }
        }
    }
}
