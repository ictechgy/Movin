//
//  EndPointGenerator.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/22.
//

struct EndPointGenerator {
    private init() { }
    
    static func bringEndPoint(using requestDTO: NowPlayingMovieRequestDTO) -> EndPoint<MovieListDTO> {
        return EndPoint(httpMethod: .get,
                        path: "3/movie/now_playing",
                        isFullPath: false,
                        queryParameters: nil,
                        queryParametersEncodable: requestDTO)
    }
    
    static func bringEndPoint(with id: Int, using requestDTO: MovieDetailRequestDTO) -> EndPoint<MovieDetailDTO> {
        return EndPoint(httpMethod: .get,
                        path: "3/movie/\(id)",
                        isFullPath: false,
                        queryParameters: nil,
                        queryParametersEncodable: requestDTO)
    }
    
    static func bringEndPoint(using requestDTO: MovieSearchRequestDTO) -> EndPoint<MovieListDTO> {
        return EndPoint(httpMethod: .get,
                        path: "3/search/movie",
                        isFullPath: false,
                        queryParameters: nil,
                        queryParametersEncodable: requestDTO)
    }
}
