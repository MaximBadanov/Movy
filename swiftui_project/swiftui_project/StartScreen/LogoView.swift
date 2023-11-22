import SwiftUI


struct LogoView: View {
    var body: some View {
        VStack(spacing: UISize.size24) {
            HStack(spacing: UISize.size8) {
                AppName.movi
                AppName.dot
            }
            .font(Font.system(size: UISize.size64,
                              weight: .bold))
            VStack(spacing: UISize.size8) {
                Text("Choose your best movie for")
                Text("tonight quickly.")
            }
            .font(Font.system(size: UISize.size24,
                              weight: .regular))
        }
    }
}

#Preview {
    LogoView()
}
