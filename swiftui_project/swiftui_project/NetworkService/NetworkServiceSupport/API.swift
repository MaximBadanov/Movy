enum API: String {
    case moviedbGenres = "https://api.themoviedb.org/3/genre/movie/list?language=en"
    var meaning: String {
        return self.rawValue
    }
}
