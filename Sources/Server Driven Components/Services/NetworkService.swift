//
//  File.swift
//  
//
//  Created by Nausheen Khan on 02/08/24.
//

import Foundation

public protocol NetworkService {
    func load(_ resourceName: String) async throws -> ScreenModel
}
