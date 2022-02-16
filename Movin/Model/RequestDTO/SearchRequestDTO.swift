//
//  SearchRequestDTO.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/17.
//

struct SearchRequestDTO: Encodable {
    let query: String
    let page: Int
    let language: String?
    let region: String?
}
