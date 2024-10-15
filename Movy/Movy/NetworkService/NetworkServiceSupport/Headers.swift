enum Headers {
    case movieDB
    var header: [String: String] {
        switch self {
        case .movieDB:
            return ["accept": "application/json",
                    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwOWE3YzQ2YmM3ZjA2NmUyZDEwNTIzYzk3MjAyYzhiZSIsInN1YiI6IjY1YjNlZmEyNTU0MWZhMDE2NGIxOGE3YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ampyZBOltOkms_AAhwoNvF0Mt1DfeVMdYqafERFv-Ag"
            ]
        }
    }
}
