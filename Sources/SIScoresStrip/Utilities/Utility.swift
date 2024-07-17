//
//  File.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import Foundation

class Utility {
    static let shared = Utility()
    
    func processString(_ string: String) -> [String] {
        return string.contains("&") ? string.split(separator: "&").map { $0.trimmingCharacters(in: .whitespaces) } : [string]
    }
}
