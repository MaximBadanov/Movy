import SwiftUI


struct GenreStyle: ViewModifier {
    var isSelected: Bool
    var backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .frame(width: UISize.size64,
                   height: UISize.size64)
            .foregroundColor(backgroundColor)
            .opacity(0.5)
            .cornerRadius(UISize.size8)
            .overlay(
                RoundedRectangle(cornerRadius: UISize.size8)
                .stroke(isSelected ? backgroundColor : Color.clear, lineWidth: 4)
            )
    }
}

