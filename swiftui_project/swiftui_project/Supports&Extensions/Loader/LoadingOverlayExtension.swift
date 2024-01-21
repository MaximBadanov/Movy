import SwiftUI


extension View {
    func withLoader(isLoading: Bool) -> some View {
        modifier(LoadingOverlayModifier(isLoading: isLoading))
    }
}

