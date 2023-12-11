
enum Genres: String {
    
    case action = "Action"
    case advanture = "Advanture"
    case animation = "Animation"
    case comedy = "Comedy"
    case crime = "Crime"
    case fantasy = "Fantasy"
    case sience = "Scieсe fiction"
    case horror = "Horror"
    
    var genre: String {
        return self.rawValue
    }
}
