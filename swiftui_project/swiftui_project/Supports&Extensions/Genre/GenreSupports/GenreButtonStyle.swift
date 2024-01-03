import SwiftUI


struct GenreButtonStyle: ButtonStyle {
    var backgroundColor: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: UISize.size64,
                   height: UISize.size64)
            .background(backgroundColor.opacity(0.5))
            .cornerRadius(UISize.size8)
    }
}

