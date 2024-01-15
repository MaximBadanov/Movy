import SwiftUI


extension View {
    func withLoader() -> some View {
        return self
            .overlay(LoaderView())
    }
}
