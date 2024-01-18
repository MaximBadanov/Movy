import SwiftUI


extension View {
    func withLoader(isLoading: Binding<Bool>) -> some View {
        modifier(LoadingOverlayModifier(isLoading: isLoading))
    }
}

