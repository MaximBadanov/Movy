import SwiftUI


struct LogoView: View {
    var body: some View {
        VStack(spacing: UISize.size24) {
            HStack(spacing: UISize.size8) {
                UIFunctions.createText(
                    text: Logo.movy.name,
                    foregroundColor: .customGray)
                UIFunctions.createText(
                    text: ".",
                    foregroundColor: .customRed)
            }
            .font(
                Font.system(
                    size: UISize.size64,
                    weight: .bold))
            VStack(spacing: UISize.size8) {
                UIFunctions.createText(
                    text: "Choose your best movie for",
                    foregroundColor: nil )
                UIFunctions.createText(
                    text: "tonight quickly.",
                    foregroundColor: nil )
            }
            .font(
                Font.system(
                    size: UISize.size24,
                    weight: .regular))
        }
    }
}

#Preview {
    LogoView()
}
