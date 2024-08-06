//
//  File.swift
//
//
//  Created by Nausheen Khan on 24/07/24.
//

import SwiftUI

extension Color {
    init(hex: String, opacity: Double = 1.0) {
        // Remove all non-alphanumeric characters
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let r, g, b: UInt64
        let a: Double
        
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            a = 255
        case 6: // RGB (24-bit)
            (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
            a = 255
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (Double((int >> 24) & 0xFF), int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            // Invalid hex string; default to white color
            (r, g, b) = (255, 255, 255)
            a = 255
        }
        
        // Apply opacity to the calculated alpha value
        let finalOpacity = a / 255 * opacity
        
        // Initialize the color with the sRGB color space
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: finalOpacity
        )
    }
}
