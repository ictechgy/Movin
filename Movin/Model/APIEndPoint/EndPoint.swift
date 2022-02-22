//
//  EndPoint.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/22.
//

enum HTTPMethod: String {
    case get = "GET"
}

extension HTTPMethod: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}

protocol Requestable {
    var httpMethod: HTTPMethod { get }
    var path: String { get }
    var isFullPath: Bool { get }
    var queryParameters: [String: Any]? { get }
    var queryParametersEncodable: Encodable? { get }
}

protocol ResponseRequestable {
    associatedtype Response: Decodable
}

struct EndPoint<ExpectedResponse: Decodable>: Requestable, ResponseRequestable {
    typealias Response = ExpectedResponse
    
    let httpMethod: HTTPMethod
    let path: String
    let isFullPath: Bool
    let queryParameters: [String : Any]?
    let queryParametersEncodable: Encodable?
}
