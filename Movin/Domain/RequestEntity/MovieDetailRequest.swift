//
//  MovieDetailRequest.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/22.
//

struct MovieDetailRequest {
    let movieID: Int
    let language: Language?
    let desiredAdditionalResponse: [String]?
}
