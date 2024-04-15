enum Urls: String {
    case moviedbGenres = "https://api.themoviedb.org/3/genre/movie/list?language=en"
    case moviesByGenres = "https://api.themoviedb.org/3/discover/movie?&with_genres="
    case posterURL = "https://image.tmdb.org/t/p/w500"
}
