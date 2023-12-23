import SwiftUI


struct GenresView: View {
    @State private var isSelectedGenre: [Bool] = Array(repeating: false,
                                                       count: AllGenres.allCases.count)
    
    var body: some View {
        ScrollView(.horizontal,
                   showsIndicators: false) {
            HStack(spacing: UISize.size8) {
                ForEach(AllGenres.allCases.indices, id: \.self) { index in
                    let genre = AllGenres.allCases[index]
                    VStack(spacing: UISize.size8) {
                        ZStack(alignment: .center) {
                            Rectangle()
                                .genreFrame(isSelected: isSelectedGenre[index],
                                            backgroundColor: genre.instance.color)
                                .onTapGesture {
                                    isSelectedGenre[index].toggle()
                                }
                            Text(genre.instance.emoji)
                                .textStyle(size: UISize.size24, weight: .regular)
                        }
                        .padding(UISize.size8)
                        Text(genre.instance.title)
                            .textStyle(size: UISize.size16, weight: .regular)
                    }
                }
            }
        }
    }
}

#Preview {
    GenresView()
}
