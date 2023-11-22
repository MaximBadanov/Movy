import SwiftUI


struct StartScreen: View {
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline,
                   spacing: UISize.size8) {
                Icons.tvUsual
                Icons.tvWithWifi
                Icons.tvAndHiFiSpeaker
            }
                   .font(.system(size: UISize.size24))
            Spacer(minLength: UISize.size8)
            LogoView()
            Spacer(minLength: UISize.size8)
            Button("Get Started") {
                // Действие при нажатии кнопки
            }
            .foregroundColor(.white)
            .font(Font.system(size: UISize.size16,
                              weight: .medium))
            .padding(.vertical, UISize.size16)
            .frame(maxWidth: .infinity)
            .background(Color.redCustom)
            .cornerRadius(UISize.size16)
            .padding(.horizontal, UISize.size40)
        }
        .padding(.bottom, UISize.size16)
    }
}

#Preview {
    StartScreen()
}


