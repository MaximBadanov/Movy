import SwiftUI


extension View {
    func withLoader(isLoading: Bool) -> some View {
        ZStack {
            self
            LoaderView()
        }
    }
}
