import SwiftUI


struct GenreStyle: ViewModifier {
    @State private var isSelected: Bool = false
    
    var backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .frame(width: UISize.size64,
                   height: UISize.size64)
            .foregroundColor(backgroundColor)
            .opacity(0.5)
            .border(isSelected ? backgroundColor : Color.clear, width: 4)
            .cornerRadius(UISize.size8)
            .onTapGesture {
                isSelected.toggle()
            }
    }
}
