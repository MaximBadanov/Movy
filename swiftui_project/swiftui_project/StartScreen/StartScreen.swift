import SwiftUI


struct StartScreen: View {
    var body: some View {
        VStack(spacing: UISize.size8) {
            HStack(alignment: .firstTextBaseline,
                   spacing: UISize.size8) {
                UIFunctions.createImage(imageName: Icons.tv.icon,
                                        renderingMode: .original)
                UIFunctions.createImage(imageName: Icons.tvWithWifi.icon,
                                        renderingMode: .template)
                UIFunctions.createImage(imageName: Icons.tvAndHiFiSpeaker.icon,
                                        renderingMode: .original)
            }
                   .customTextStyle(size: UISize.size24,
                                    weight: .regular)
            Spacer(minLength: UISize.size8)
            LogoView()
            Spacer(minLength: UISize.size8)
            Button("Get Started") {
                // 
            }
            .customButton(foregroundColor: .white,
                          background: .redCustom ?? .red,
                          fontSize: UISize.size16,
                          fontWeight: .medium,
                          paddingVertical: UISize.size16,
                          paddingHorizontal: UISize.size40,
                          cornerRadius: UISize.size16)
        }
        .padding(.bottom, UISize.size16)
    }
}

#Preview {
    StartScreen()
}


