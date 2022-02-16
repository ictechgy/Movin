//
//  MovieDetail.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/16.
//

struct MovieDetail: Decodable {
    let isAdultMovie: Bool?
    let backdropPath: String?
    let seriesInformation: SeriesInformation?
    let productionCostDollars: Int?
    let genreCategories: [Genre]?
    let movieHomepageURL: String?
    let id: Int?
    let imdbID: String?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let popularity: Double?
    let posterPath: String?
    let productionCompanies: [Company]?
    let productionCountries: [Country]?
    let releaseDate: String?
    let revenueDollars: Int?
    let runningTime: Int?
    let languagesInMovie: [Language]?
    let status: String?
    let tagline: String?
    let title: String?
    let isNormalVideo: Bool?
    let numberOfUsersEvaluated: Int?
    let averageUserScore: Double?
    let participants: Participants?
    
    enum CodingKeys: String, CodingKey {
        case id, status, tagline, title, overview, popularity
        case isAdultMovie = "adult"
        case backdropPath = "backdrop_path"
        case seriesInformation = "belongs_to_collection"
        case productionCostDollars = "budget"
        case genreCategories = "genres"
        case movieHomepageURL = "homepage"
        case imdbID = "imdb_id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case releaseDate = "release_date"
        case revenueDollars = "revenue"
        case runningTime = "runtime"
        case languagesInMovie = "spoken_languages"
        case isNormalVideo = "video"
        case numberOfUsersEvaluated = "vote_count"
        case averageUserScore = "vote_average"
        case participants = "credits"
    }
}

struct SeriesInformation: Decodable {
    let id: Int?
    let name: String?
    let posterPath: String?
    let backdropPath: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
}

struct Genre: Decodable {
    let id: Int?
    let name: String?
}

struct Company: Decodable {
    let name: String?
    let id: Int?
    let logoPath: String?
    let originCountry: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case logoPath = "logo_path"
        case originCountry = "origin_country"
    }
}

struct Country: Decodable {
    let uniqueCode: String?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case uniqueCode = "iso_3166_1"
    }
}

struct Language: Decodable {
    let uniqueCode: String?
    let name: String?
    let englishName: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case englishName = "english_name"
        case uniqueCode = "iso_639_1"
    }
}
