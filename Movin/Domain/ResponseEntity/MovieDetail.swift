//
//  MovieDetail.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/21.
//

struct MovieDetail {
    let isAdultMovie: Bool?
    let backdropPath: String?
    let genreCategories: [Genre]?
    let id: Int?
    let originalTitle: String?
    let overview: String?
    let posterPath: String?
    let productionCompanies: [Company]?
    let releaseDate: String?
    let runningTime: Int?
    let status: String?
    let tagline: String?
    let title: String?
    let numberOfUsersEvaluated: Int?
    let averageUserScore: Double?
    let actors: [Actor]?
}

struct Genre {
    let id: Int?
    let name: String?
}

struct Company {
    let name: String?
    let id: Int?
    let logoPath: String?
    let originCountry: String?
}
