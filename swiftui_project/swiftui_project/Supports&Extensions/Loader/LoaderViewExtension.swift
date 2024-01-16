import SwiftUI


extension View {
    func withLoader() -> some View {
        ZStack {
            self
            LoaderView()
        }
    }
}
