//
//  File.swift
//  
//
//  Created by Nausheen Khan on 16/07/24.
//

import SwiftUI

extension Font {
    func withSize(_ size: CGFloat, weight: Font.Weight, design: Font.Design) -> Font {
        return .system(size: size, weight: weight, design: design)
    }
}
