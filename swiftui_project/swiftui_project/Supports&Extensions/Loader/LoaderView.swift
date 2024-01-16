import SwiftUI


struct LoaderView: View {
    @State private var isLoading: Bool = true
    private let scaleSize: CGFloat = 2
    
    var body: some View {
        if isLoading {
            ProgressView()
                .scaleEffect(scaleSize)
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isLoading.toggle()
                        }
                    }
                }
        }
    }
}

#Preview {
    LoaderView()
}




