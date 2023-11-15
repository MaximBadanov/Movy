import SwiftUI


struct LogoView: View {
    var body: some View {
        VStack {
            HStack() {
                Text(StartScreenConstants.StartScreenAppName.movy)
                    .foregroundColor(StartScreenConstants.StartScreenColors.customGray)
                Text(StartScreenConstants.StartScreenAppName.dot)
                    .foregroundColor(StartScreenConstants.StartScreenColors.customRed)
            }
            .font(Font.system(size: UIConstants.size64, weight: .bold))
            .padding(.bottom, UIConstants.size24)
            VStack {
                Text(StartScreenConstants.StartScreenDescription.firstRow)
                Text(StartScreenConstants.StartScreenDescription.secondRow)
            }
            .padding([.leading, .trailing], UIConstants.size16)
            .font(Font.system(size: UIConstants.size24, weight: .regular))
        }
    }
}

#Preview {
    LogoView()
}
