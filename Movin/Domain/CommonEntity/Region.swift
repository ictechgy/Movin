//
//  Region.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/21.
//

protocol ISO3166Compliance {
    var isoCode: String { get }
}

enum Region {
    case korea
    case unitedStates
    case other(isoCode: String)
}

extension Region: ISO3166Compliance {
    var isoCode: String {
        switch self {
        case .korea:
            return "KR"
        case .unitedStates:
            return "US"
        case .other(let isoCode):
            return isoCode
        }
    }
}
