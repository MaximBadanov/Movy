import SwiftUI

struct GenresViewWithScroll: View {
    @StateObject private var viewModel = GenresViewWithScrollViewModel()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: UISize.size8) {
                ForEach(viewModel.AllGenres) { genre in
                    GenreButton(
                        title: genre.name,
                        emoji: genre.name.toEmoji,
                        backgroundColor: genre.name.setColor,
                        isSelected: viewModel.isSelected(genre.id.description),
                        toggleSelection: { viewModel.toggleSelection(genre.id.description)
                        }
                    )
                }
            }
        }
        .onAppear {
            viewModel.fetchGenres()
        }
    }
}

#Preview {
    GenresViewWithScroll()
}
