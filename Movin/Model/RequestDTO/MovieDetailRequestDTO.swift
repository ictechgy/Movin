//
//  MovieDetailRequestDTO.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/17.
//

struct MovieDetailRequestDTO {
    let language: Language
    let desiredAdditionalResponse: [String]?
    
    enum CodingKeys: String, CodingKey {
        case language
        case desiredAdditionalResponse = "append_to_response"
    }
}

extension MovieDetailRequestDTO: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(language.isoCode, forKey: .language)
        try container.encode(desiredAdditionalResponse?.joined(separator: ","),
                             forKey: .desiredAdditionalResponse)
    }
}
