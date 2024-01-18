import SwiftUI

struct ResultView: View {
   @State private var isLoading = true
    var body: some View {
        MovieView()
            .withLoader(isLoading: $isLoading)
        
    }
}

#Preview {
    ResultView()
}
