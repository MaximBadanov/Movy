import SwiftUI


struct StartScreen: View {
    var body: some View {
        VStack(spacing: UISize.size8) {
<<<<<<< HEAD
            HStack(
                alignment: .firstTextBaseline,
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
=======
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
>>>>>>> task_b
            Spacer(minLength: UISize.size8)
            LogoView()
            Spacer(minLength: UISize.size8)
            Button("Get Started") {
                //
            }
<<<<<<< HEAD
            .foregroundColor(.white)
            .font(
                Font.system(
                    size: UISize.size16,
                    weight: .medium))
            .padding(.vertical, UISize.size16)
            .frame(maxWidth: .infinity)
            .background(Color.redCustom)
            .cornerRadius(UISize.size16)
=======
            .buttonStyle(.primaryStyle)
>>>>>>> task_b
            .padding(.horizontal, UISize.size40)
            
        }
        .padding(.bottom, UISize.size16)
    }
}

#Preview {
    StartScreen()
}


