//
//  MovieSearchRequest.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/22.
//

struct MovieSearchRequest {
    let query: String
    let page: Int
    let language: Language?
    let region: Region?
}
