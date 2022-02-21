//
//  MovieDetailRequest.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/22.
//

enum DesiredAdditionalInformation: String {
    case credits
}

extension DesiredAdditionalInformation: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}

struct MovieDetailRequest {
    let movieID: Int
    let language: Language?
    let desiredAdditionalResponse: [DesiredAdditionalInformation]?
}
