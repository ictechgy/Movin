//
//  MovieList.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/15.
//

struct MovieList: Decodable {
    let page: Int?
    let entries: [Movie]?
    let totalNumberOfPages: Int?
    let totalNumberOfResults: Int?
    let releaseDateRange: ReleaseDateRange?
    
    enum CodingKeys: String, CodingKey {
        case page
        case entries = "results"
        case totalNumberOfPages = "total_pages"
        case totalNumberOfResults = "total_results"
        case releaseDateRange = "dates"
    }
}

struct Movie: Decodable {
    let id: Int?
    let title: String?
    let overview: String?
    let posterPath: String?
    let backdropPath: String?
    let releaseDate: String?
    let popularity: Double?
    let numberOfUsersEvaluated: Int?
    let averageUserScore: Double?
    let isNormalVideo: Bool?
    let originalTitle: String?
    let originalLanguage: String?
    let isAdultMovie: Bool?
    let genreIDs: [Int]?
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview, popularity
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case releaseDate = "release_date"
        case numberOfUsersEvaluated = "vote_count"
        case averageUserScore = "vote_average"
        case isNormalVideo = "video"
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case isAdultMovie = "adult"
        case genreIDs = "genre_ids"
    }
}

struct ReleaseDateRange: Decodable {
    let startDate: String?
    let endDate: String?
    
    enum CodingKeys: String, CodingKey {
        case startDate = "minimum"
        case endDate = "maximum"
    }
}
