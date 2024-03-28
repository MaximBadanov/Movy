import SwiftUI
import Combine


struct ResultView: View {
    @ObservedObject private var viewModel = ResultViewViewModel()

    var body: some View {
        MovieView()
            .withLoader(isLoading: true)
            .onAppear() {
               _ = viewModel.fetchGenres()
            }
    }
}

#Preview {
    ResultView()
}
