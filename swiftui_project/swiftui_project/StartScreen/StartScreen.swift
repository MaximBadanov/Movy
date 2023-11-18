import SwiftUI


struct StartScreen: View {
    
    var body: some View {
        
        VStack {
            HStack(alignment: .firstTextBaseline,
                   spacing: UIConstants.size8) {
                Constants.Icons.tvUsual
                Constants.Icons.tvWithWifi
                Constants.Icons.tvAndHiFiSpeaker
            }
            .font(.system(size: UIConstants.size24))
            Spacer(minLength: UIConstants.size8)
            LogoView()
            Spacer(minLength: UIConstants.size8)
            Button("Get started") {
                //             тут будет экшен перехода
            }
            .font(Font.system(size: 16,
                              weight: .medium))
            .padding(.horizontal, UIConstants.size112)
            .padding(.vertical, UIConstants.size16)
            .foregroundColor(.white)
            .background(Color.appsRed)
            .cornerRadius(UIConstants.size16)
        }
        .padding(.bottom, UIConstants.size40)
    }
}

#Preview {
    StartScreen()
}


