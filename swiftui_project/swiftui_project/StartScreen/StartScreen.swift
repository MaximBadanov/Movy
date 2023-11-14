//
//  StartScreen.swift
//  swiftui_project
//
//  Created by Максим Баданов on 10.11.2023.
//
import SwiftUI


struct StartScreen: View {
    
    var body: some View {
        
        VStack {
            HStack(alignment: .firstTextBaseline,
                   spacing: UIConstants.size8.rawValue) {
                StartScreenConstants.StartScreenIcons.tvUsual
                StartScreenConstants.StartScreenIcons.tvWithWifi
                StartScreenConstants.StartScreenIcons.tvAndHiFiSpeaker
            }
            .font(.system(size: UIConstants.size24.rawValue))
            Spacer(minLength: UIConstants.size8.rawValue)
            LogoView()
            Spacer(minLength: UIConstants.size8.rawValue)
            Button(StartScreenConstants.StartScreenButton.getStarted) {
                //             тут будет экшен перехода
            }
            .font(Font.system(size: UIConstants.size16.rawValue,
                              weight: .medium))
            .padding(.horizontal, UIConstants.size112.rawValue)
            .padding(.vertical, UIConstants.size16.rawValue)
            .foregroundColor(.white)
            .background(StartScreenConstants.StartScreenColors.customRed)
            .cornerRadius(UIConstants.size16.rawValue)
        }
        .padding(.bottom, UIConstants.size40.rawValue)
    }
}

#Preview {
    StartScreen()
}


