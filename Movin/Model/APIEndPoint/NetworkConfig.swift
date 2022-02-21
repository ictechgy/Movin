//
//  NetworkConfig.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/22.
//

import Foundation

protocol NetworkConfigurable {
    var baseURLPath: String { get }
    var headers: [String: String]? { get }
}

struct NetworkConfig: NetworkConfigurable {
    let baseURLPath: String = "https://api.themoviedb.org/"
    let headers: [String : String]? = {
        guard let tokenValue = Bundle.main.infoDictionary?["APIReadAccessToken"] as? String else {
            return nil
        }
        
        var headers = [String: String]()
        let authKey = "Authorization"
        let authValue = "Bearer \(tokenValue)"
        
        headers.updateValue(authValue, forKey: authKey)
        
        return headers
    }()
}
