import SwiftUI


enum Icons {
    case tv
    case tvAndHiFiSpeaker
    case tvWithWifi
    
    var icon: String {
        switch self {
        case .tv:
            return "tv"
        case .tvAndHiFiSpeaker:
            return "tv.and.hifispeaker.fill"
        case .tvWithWifi:
            return "tv.badge.wifi"
        }
    }
}


enum Names {
    case movi
    var name: String {
        switch self {
            case .movi:
                return "Movi"
        }
    }
}


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
