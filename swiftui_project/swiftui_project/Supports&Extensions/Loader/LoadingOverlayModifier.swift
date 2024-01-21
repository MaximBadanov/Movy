import SwiftUI


struct LoadingOverlayModifier: ViewModifier {
    @State var isLoading: Bool = true
    
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
