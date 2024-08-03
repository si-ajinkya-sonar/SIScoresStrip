//
//  File.swift
//  
//
//  Created by Nausheen Khan on 02/08/24.
//

import Foundation

public struct Constants {
    
    public struct ScreenResources {
        
        public static let baseUrl = "localhost:3000"
        public static let homelayout = "homelayout"
        
        public static func resource(for resourceName: String) -> URL? {
            var components = URLComponents()
            components.scheme = "http"
            components.percentEncodedPath = baseUrl
            components.path = "/\(resourceName)"
            return components.url
        }
    }
    
}
