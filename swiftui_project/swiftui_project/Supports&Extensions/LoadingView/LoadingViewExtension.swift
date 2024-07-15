import SwiftUI

extension View {
    @ViewBuilder
    func isLoading(isLoading: Binding<Bool>) -> some View {
        switch isLoading.wrappedValue {
        case true:
            LoadingView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isLoading.wrappedValue = false
                        }
                    }
                }
        case false:
            self
        }
    }
}
