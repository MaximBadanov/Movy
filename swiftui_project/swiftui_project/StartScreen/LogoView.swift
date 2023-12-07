import SwiftUI


struct LogoView: View {
    var body: some View {
        VStack(spacing: UISize.size24) {
            HStack(spacing: UISize.size8) {
                Text(Logo.movy.name)
                    .foregroundColor(.customGray)
                Text(".")
                    .foregroundColor(.customRed)
            }
<<<<<<< HEAD
            .font(
                Font.system(
                    size: UISize.size64,
                    weight: .bold))
=======
            .textStyle(size: UISize.size64,
                       weight: .bold)
>>>>>>> task_b
            VStack(spacing: UISize.size8) {
                Text("Choose your best movie for")
                Text("tonight quickly.")
            }
<<<<<<< HEAD
            .font(
                Font.system(
                    size: UISize.size24,
                    weight: .regular))
=======
            .textStyle(size: UISize.size24,
                       weight: .regular)
>>>>>>> task_b
        }
    }
}

#Preview {
    LogoView()
}
