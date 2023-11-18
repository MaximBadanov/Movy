import SwiftUI


struct LogoView: View {
    var body: some View {
        VStack {
            HStack() {
                Text("Movy")
                    .foregroundColor(Color.appsGray)
                Text(".")
                    .foregroundColor(Color.appsRed)
            }
            .font(Font.system(size: 64, weight: .bold))
            .padding(.bottom, UIConstants.size24)
            VStack {
                Text(Constants.Description.firstRow)
                Text(Constants.Description.secondRow)
            }
            .padding(.horizontal, UIConstants.size16)
            .font(Font.system(size: 24, weight: .regular))
        }
    }
}

#Preview {
    LogoView()
}
