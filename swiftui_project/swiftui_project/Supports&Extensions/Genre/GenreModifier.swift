import SwiftUI


struct GenreStyle: ViewModifier {
    var backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .frame(width: UISize.size64,
                   height: UISize.size64)
            .foregroundColor(backgroundColor)
            .opacity(0.5)
            .cornerRadius(UISize.size8)
    }
}
