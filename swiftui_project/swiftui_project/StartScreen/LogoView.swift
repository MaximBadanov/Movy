import SwiftUI


struct LogoView: View {
    var body: some View {
        VStack(spacing: UISize.size24) {
            HStack(spacing: UISize.size8) {
                CustomText(text: Logo.movy.name)
                    .foregroundColor(.customGray)
                CustomText(text: ".")
                    .foregroundColor(.customRed)
            }
            .textStyle(size: UISize.size64,
                       weight: .bold)
            VStack(spacing: UISize.size8) {
                CustomText(text: "Choose your best movie for")
                CustomText(text: "tonight quickly.")
            }
            .textStyle(size: UISize.size24,
                       weight: .regular)
        }
    }
}

#Preview {
    LogoView()
}
