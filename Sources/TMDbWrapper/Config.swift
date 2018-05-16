//
//  Config.swift
//  Alamofire
//
//  Created by Amadeu Cavalcante Filho on 14/05/18.
//

import Foundation

public struct Config {
    public let apiKey: String
    public let language: String
    
    public enum Endpoint {
        case v3
        case v4
        
        public static let production = "https://api.themoviedb.org"
        
        public var url: String {
            switch self {
            case .v3: return "\(Endpoint.production)/3"
            case .v4: return "\(Endpoint.production)/4"
            }
        }
    }
}
