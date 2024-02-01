import SwiftUI

struct ResultView: View {
    let network = NetworkService()
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
                network.makeRequest()
            }
    }
}

#Preview {
    ResultView()
}
