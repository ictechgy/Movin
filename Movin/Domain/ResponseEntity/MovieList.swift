//
//  MovieList.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/20.
//

struct MovieList {
    let currentPage: Int?
    let entries: [Movie]?
    let totalNumberOfPages: Int?
    let totalNumberOfResults: Int?
    let releaseDateRange: ReleaseDateRange?
}

struct Movie {
    let id: Int?
    let title: String?
    let posterPath: String?
    let releaseDate: String?
    let popularity: Double?
    let averageUserScore: Double?
    let isAdultMovie: Bool?
}

struct ReleaseDateRange {
    let startDate: String?
    let endDate: String?
}
