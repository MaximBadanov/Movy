import SwiftUI


struct UIFunctions {
    
    static func createText(text: String,
                           foregroundColor: Color?) -> Text {
        return Text(text)
            .foregroundColor(foregroundColor)
    }
    
    static func createImage(imageName: String,
                            renderingMode: Image.TemplateRenderingMode?) -> Image {
        return Image(systemName: imageName)
            .renderingMode(renderingMode)
    }
}
