//
//  Language.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/21.
//

protocol ISO639Compliance {
    var isoCode: String { get }
}

enum Language {
    case korean
    case english
    case other(isoCode: String)
}

extension Language: ISO639Compliance {
    var isoCode: String {
        switch self {
        case .korean:
            return "ko"
        case .english:
            return "en"
        case .other(let isoCode):
            return isoCode
        }
    }
}
