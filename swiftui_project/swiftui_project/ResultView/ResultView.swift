import SwiftUI
import Combine


struct ResultView: View {
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
    }
}

#Preview {
    ResultView()
}
