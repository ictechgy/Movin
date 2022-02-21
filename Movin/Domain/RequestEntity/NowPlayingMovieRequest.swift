//
//  NowPlayingMovieRequest.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/21.
//

struct NowPlayingMovieRequest {
    let page: Int
    let language: String?
    let region: String?
}

extension NowPlayingMovieRequest {
    func toDTO() -> NowPlayingMovieRequestDTO {
        return NowPlayingMovieRequestDTO(page: page,
                                         language: language,
                                         region: region)
    }
}
