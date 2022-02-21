//
//  NowPlayingMovieRequestDTO.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/17.
//

struct NowPlayingMovieRequestDTO {
    let page: Int
    let language: Language
    let region: Region
    
    enum CodingKeys: String, CodingKey {
        case page, language, region
    }
}

extension NowPlayingMovieRequestDTO: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(language.isoCode, forKey: .language)
        try container.encode(region.isoCode, forKey: .region)
    }
}
