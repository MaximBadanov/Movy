import SwiftUI


struct StartScreen: View {
    
    var body: some View {
        
        VStack {
            HStack(alignment: .firstTextBaseline,
                   spacing: UIConstants.size8) {
                StartScreenConstants.StartScreenIcons.tvUsual
                StartScreenConstants.StartScreenIcons.tvWithWifi
                StartScreenConstants.StartScreenIcons.tvAndHiFiSpeaker
            }
            .font(.system(size: UIConstants.size24))
            Spacer(minLength: UIConstants.size8)
            LogoView()
            Spacer(minLength: UIConstants.size8)
            Button(StartScreenConstants.StartScreenButton.getStarted) {
                //             тут будет экшен перехода
            }
            .font(Font.system(size: UIConstants.size16,
                              weight: .medium))
            .padding(.horizontal, UIConstants.size112)
            .padding(.vertical, UIConstants.size16)
            .foregroundColor(.white)
            .background(StartScreenConstants.StartScreenColors.customRed)
            .cornerRadius(UIConstants.size16)
        }
        .padding(.bottom, UIConstants.size40)
    }
}

#Preview {
    StartScreen()
}


