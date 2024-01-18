import SwiftUI


struct LoadingOverlay: View {
    private let scaleSize: CGFloat = 2
    
    var body: some View {
        Spacer(minLength: UISize.size8)
        ProgressView()
            .scaleEffect(scaleSize)
            .tint(Color.customGray)
        Spacer(minLength: UISize.size8)
    }
}

#Preview {
    LoadingOverlay()
}




