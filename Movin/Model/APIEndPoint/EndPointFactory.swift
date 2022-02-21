//
//  EndPointFactory.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/22.
//

struct EndPointFactory {
    private init() { }
    
    static func makeEndPoint(using requestDTO: NowPlayingMovieRequestDTO) -> EndPoint<MovieListDTO> {
        return EndPoint(httpMethod: .get,
                        path: "3/movie/now_playing",
                        isFullPath: false,
                        queryParameters: nil,
                        queryParametersEncodable: requestDTO)
    }
    
    static func makeEndPoint(with id: Int, using requestDTO: MovieDetailRequestDTO) -> EndPoint<MovieDetailDTO> {
        return EndPoint(httpMethod: .get,
                        path: "3/movie/\(id)",
                        isFullPath: false,
                        queryParameters: nil,
                        queryParametersEncodable: requestDTO)
    }
    
    static func makeEndPoint(using requestDTO: MovieSearchRequestDTO) -> EndPoint<MovieListDTO> {
        return EndPoint(httpMethod: .get,
                        path: "3/search/movie",
                        isFullPath: false,
                        queryParameters: nil,
                        queryParametersEncodable: requestDTO)
    }
}
