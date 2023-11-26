import SwiftUI

struct CustomButton: ButtonStyle {
    var foregroundColor: Color
    var background: Color
    var fontSize: CGFloat
    var fontWeight: Font.Weight
    var paddingVertical: CGFloat
    var paddingHorizontal: CGFloat
    var cornerRadius: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(foregroundColor)
            .font(Font.system(size: fontSize,
                              weight: fontWeight))
            .padding(.vertical, paddingVertical)
            .frame(maxWidth: .infinity)
            .background(background)
            .cornerRadius(cornerRadius)
            .padding(.horizontal, paddingHorizontal)
    }
}


struct PrimaryTextStyle: ViewModifier {
    var size: CGFloat
    var weight: Font.Weight
    
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: size,
                              weight: weight))
    }
}
