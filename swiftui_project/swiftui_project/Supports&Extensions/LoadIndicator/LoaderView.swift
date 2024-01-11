import SwiftUI

struct LoaderView: View {
    let tintColor: Color = .customGray
    let scaleSize: CGFloat = 2
    
    var body: some View {
        ProgressView()
            .scaleEffect(scaleSize)
            .progressViewStyle(CircularProgressViewStyle(tint: tintColor))
    }
}

#Preview {
    LoaderView()
}
