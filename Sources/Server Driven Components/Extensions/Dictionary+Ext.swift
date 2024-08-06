//
//  File.swift
//  
//
//  Created by Nausheen Khan on 02/08/24.
//

import Foundation

extension Dictionary {
    
//    func decode<T: Codable>() -> T? {
//        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
//            return nil
//        }
//        return try? JSONDecoder().decode(T.self, from: data)
//    }
    
    func decode<T: Codable>() -> T? {
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            print("Decoding failed with error: \(error)")
            return nil
        }
    }
}
