import SwiftUI


struct Icons {
    
    static var tvUsual: Image {
        Image(systemName: "tv")
            .renderingMode(.original)
    }
        
    static var tvAndHiFiSpeaker : Image {
        Image(systemName: "tv.and.hifispeaker.fill")
            .renderingMode(.original)
    }
        
    static var tvWithWifi: Image {
        Image(systemName: "tv.badge.wifi")
    }
}

struct AppName {
    
    static var movi : Text {
        Text("Movy")
            .foregroundColor(Color.grayCustom)
    }
    
    static var dot: Text {
        Text(".")
            .foregroundColor(Color.redCustom)
    }
}


