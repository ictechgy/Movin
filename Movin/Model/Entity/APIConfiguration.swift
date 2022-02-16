//
//  APIConfiguration.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/15.
//

struct APIConfiguration: Decodable {
    let imageConfiguration: ImageConfiguration?
    let changeLogKeys: [String]?
    
    enum CodingKeys: String, CodingKey {
        case imageConfiguration = "images"
        case changeLogKeys = "change_keys"
    }
}

struct ImageConfiguration: Decodable {
    let baseURL: String?
    let secureBaseURL: String?
    let backdropSizes: [String]?
    let logoSizes: [String]?
    let posterSizes: [String]?
    let profileSizes: [String]?
    let stillSizes: [String]?
    
    enum CodingKeys: String, CodingKey {
        case baseURL = "base_url"
        case secureBaseURL = "secure_base_url"
        case backdropSizes = "backdrop_sizes"
        case logoSizes = "logo_sizes"
        case posterSizes = "poster_sizes"
        case profileSizes = "profile_sizes"
        case stillSizes = "still_sizes"
    }
}
