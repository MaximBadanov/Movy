import SwiftUI


extension Color {
    static var redCustom: Color? {
        Color("customRed")
    }
    
    static var grayCustom: Color? {
        Color("customGray")
    }
}

extension View {
    func customButton(foregroundColor: Color,
                      background: Color,
                      fontSize: CGFloat,
                      fontWeight: Font.Weight,
                      paddingVertical: CGFloat,
                      paddingHorizontal: CGFloat,
                      cornerRadius: CGFloat) -> some View {
       buttonStyle(CustomButton(foregroundColor: foregroundColor,
                                background: background,
                                fontSize: fontSize,
                                fontWeight: fontWeight,
                                paddingVertical: paddingVertical,
                                paddingHorizontal: paddingHorizontal,
                                cornerRadius: cornerRadius))
    }
    
    func customTextStyle(size: CGFloat,
                         weight: Font.Weight) -> some View {
        modifier(PrimaryTextStyle(size: size,
                                  weight: weight))
    }
}
