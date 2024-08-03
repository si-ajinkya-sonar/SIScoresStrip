//
//  File.swift
//  
//
//  Created by Nausheen Khan on 02/08/24.
//

import Foundation

public class LocalService: NetworkService {
    
    public init() {}
    
    public func load(_ resourceName: String) async throws -> ScreenModel {
        guard let path = Bundle.module.url(forResource: resourceName, withExtension: "json", subdirectory: nil) else {
            fatalError("Resource file: \(resourceName) not found")
        }
        
        let data = try Data(contentsOf: path)
        let screenModel = try JSONDecoder().decode(ScreenModel.self, from: data)
        return screenModel
    }
}
