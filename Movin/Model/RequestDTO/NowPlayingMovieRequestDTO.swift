//
//  NowPlayingMovieRequestDTO.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/17.
//

struct NowPlayingMovieRequestDTO: Encodable {
    let page: Int
    let language: String?
    let region: String?
}
