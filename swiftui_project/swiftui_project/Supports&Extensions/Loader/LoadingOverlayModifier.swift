import SwiftUI


struct LoadingOverlayModifier: ViewModifier {
    @Binding var isLoading: Bool
    func body(content: Content) -> some View {
        if isLoading {
            LoadingOverlay()
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isLoading.toggle()
                        }
                    }
                }
        } else {
            content
        }
    }
}
