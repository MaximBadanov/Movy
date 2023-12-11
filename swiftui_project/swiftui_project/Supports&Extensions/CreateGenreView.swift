import SwiftUI


func createGenreView(foregroundColor: Color,
                     emogi: String,
                     genre: String) -> some View {
    
    return VStack(spacing: UISize.size8) {
        ZStack(alignment: .center) {
            Rectangle()
                .frame(width: UISize.size64,
                       height: UISize.size64)
                .foregroundColor(foregroundColor)
                .opacity(0.5)
                .cornerRadius(UISize.size8)
            Text(emogi)
                .textStyle(size: UISize.size24,
                           weight: .regular)
        }
        .padding()
        Text(genre)
            .textStyle(size: UISize.size16,
                       weight: .regular)
    }
}

