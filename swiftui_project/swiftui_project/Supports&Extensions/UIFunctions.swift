import SwiftUI


struct UIFunctions {
   static func createText(text: String,
                          foregroundColor: Color?) -> Text {
        let text = Text(text)
            .foregroundColor(foregroundColor)
        return text
    }
    
    static func createImage(imageName: String,
                            renderingMode: Image.TemplateRenderingMode?) -> Image {
        let image = Image(systemName: imageName)
            .renderingMode(renderingMode)
        return image
    }
}
