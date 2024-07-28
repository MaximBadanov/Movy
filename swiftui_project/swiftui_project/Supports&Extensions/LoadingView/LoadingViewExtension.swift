import SwiftUI

extension View {
    @ViewBuilder
    func isLoading(isLoading: Bool) -> some View {
        if isLoading {
            LoadingView()
        } else {
            self
        }
    }
}
