import SwiftUI

extension View {
    @ViewBuilder
    func isLoading(isLoading: Bool) -> some View {
        switch isLoading {
        case true:
            LoadingView()
        case false:
            self
        }
    }
}
