//
//  StartScreenConstants.swift
//  swiftui_project
//
//  Created by Максим Баданов on 10.11.2023.
//
import SwiftUI

struct StartScreenConstants {
    
    enum StartScreenIcons {
        static var tvUsual = Image(systemName: "tv")
            .renderingMode(.original)
        static var tvWithWifi = Image(systemName: "tv.badge.wifi")
        static var tvAndHiFiSpeaker = Image(systemName: "tv.and.hifispeaker.fill")
            .renderingMode(.original)
    }
    
    enum StartScreenAppName {
        static var movy = "Movy"
        static var dot = "."
    }
    
    enum StartScreenDescription {
        static var firstRow = "Choose your best movie for"
        static var secondRow = "tonight quickly."
    }
    
    enum StartScreenButton {
        static var getStarted = "GetStarted"
    }
    
    enum StartScreenColors {
        static var customRed: Color? {
            Color("customRed")
        }
        
        static var customGray: Color? {
            Color("customGray")
        }
    }
}
