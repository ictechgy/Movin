//
//  MovieSearchRequestDTO.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/17.
//

struct MovieSearchRequestDTO {
    let query: String
    let page: Int
    let language: Language
    let region: Region
    
    enum CodingKeys: String, CodingKey {
        case query, page, language, region
    }
}

extension MovieSearchRequestDTO: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(query, forKey: .query)
        try container.encode(page, forKey: .page)
        try container.encode(language.isoCode, forKey: .language)
        try container.encode(region.isoCode, forKey: .region)
    }
}
