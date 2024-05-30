import SwiftUI

import SwiftUI

struct GenresViewWithScroll: View {
    @ObservedObject var viewModel: GenresWithScrollViewModel
    @Binding var selectedGenres: [String]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: UISize.size8) {
                ForEach(viewModel.fetchedGenres) { genre in
                    GenreButton(
                        title: genre.name,
                        emoji: genre.name.toEmoji,
                        backgroundColor: genre.name.setColor,
                        isSelected: viewModel.isSelected(genre.id.description),
                        toggleSelection: {
                            viewModel.toggleSelection(genre.id.description)
                            selectedGenres = viewModel.selectedGenres
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

