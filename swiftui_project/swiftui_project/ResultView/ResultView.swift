import SwiftUI
import Combine


struct ResultView: View {
    @ObservedObject private var viewModel = ResultViewViewModel()
    
    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
    }
}

#Preview {
    ResultView()
}
