import SwiftUI


struct StartScreen: View {
    var body: some View {
        VStack(spacing: UISize.size8) {
            HStack(alignment: .firstTextBaseline,
                   spacing: UISize.size8) {
                CustomImage(imageName: Icons.tv.icon,
                            renderingMode: .original,
                            size: UISize.size24,
                            color: nil)
                CustomImage(imageName: Icons.tvWithWifi.icon,
                            renderingMode: .template,
                            size: UISize.size24,
                            color: nil)
                CustomImage(imageName: Icons.tvAndHiFiSpeaker.icon,
                            renderingMode: .original,
                            size: UISize.size24,
                            color: nil)
            }
                   .textStyle(size: UISize.size24,
                              weight: .regular)
            Spacer(minLength: UISize.size8)
            LogoView()
            Spacer(minLength: UISize.size8)
            Button("Get Started") {
                //
            }
            .primaryButtonStyle()
            .padding(.horizontal, UISize.size40)
            
        }
        .padding(.bottom, UISize.size16)
    }
}

#Preview {
    StartScreen()
}


