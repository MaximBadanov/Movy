import SwiftUI


struct GenreButton: View {
    @State private var isSelected: Bool = false
    @State private var id: String
    
    let title: String
    let emoji: String
    let backgroundColor: Color
    
    init(title: String, emoji: String, backgroundColor: Color, id: String) {
        self.title = title
        self.emoji = emoji
        self.backgroundColor = backgroundColor
        self._id = State(initialValue: id)
    }
    
    var body: some View {
        VStack(spacing: UISize.size8) {
            Button(emoji) {
                isSelected.toggle()
                
                if isSelected {
                    if !GenreButtonViewModel.shared.genres.contains(id) {
                        GenreButtonViewModel.shared.genres.append(id)
                        print(GenreButtonViewModel.shared.genres)
                    }
                } else {
                    GenreButtonViewModel.shared.genres.removeAll(where: { $0 == id })
                    print(GenreButtonViewModel.shared.genres)
                }
            }
            .textStyle(
                size: UISize.size24,
                weight: .regular
            )
            .genreButtonStyle(
                backgroundColor: backgroundColor,
                isSelected: isSelected
            )
            .padding(UISize.size8)
            Text(title)
                .textStyle(
                    size: UISize.size16,
                    weight: .regular
                )
        }
    }
}

class GenreButtonViewModel: ObservableObject {
    static let shared = GenreButtonViewModel()
    @Published var genres: [String] = []
}
