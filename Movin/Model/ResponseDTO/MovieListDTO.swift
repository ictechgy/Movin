//
//  MovieListDTO.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/15.
//

struct MovieListDTO: Decodable {
    let page: Int?
    let entries: [MovieDTO]?
    let totalNumberOfPages: Int?
    let totalNumberOfResults: Int?
    let releaseDateRange: ReleaseDateRangeDTO?
    
    enum CodingKeys: String, CodingKey {
        case page
        case entries = "results"
        case totalNumberOfPages = "total_pages"
        case totalNumberOfResults = "total_results"
        case releaseDateRange = "dates"
    }
}

extension MovieListDTO {
    func toDomain() -> MovieList {
        return MovieList(currentPage: page,
                         entries: entries?.map { $0.toDomain() },
                         totalNumberOfPages: totalNumberOfPages,
                         totalNumberOfResults: totalNumberOfResults,
                         releaseDateRange: releaseDateRange?.toDomain())
    }
}

struct MovieDTO: Decodable {
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

extension MovieDTO {
    func toDomain() -> Movie {
        return Movie(id: id,
                     title: title,
                     posterPath: posterPath,
                     releaseDate: releaseDate,
                     popularity: popularity,
                     averageUserScore: averageUserScore,
                     isAdultMovie: isAdultMovie)
    }
}

struct ReleaseDateRangeDTO: Decodable {
    let startDate: String?
    let endDate: String?
    
    enum CodingKeys: String, CodingKey {
        case startDate = "minimum"
        case endDate = "maximum"
    }
}

extension ReleaseDateRangeDTO {
    func toDomain() -> ReleaseDateRange {
        return ReleaseDateRange(startDate: startDate, endDate: endDate)
    }
}
