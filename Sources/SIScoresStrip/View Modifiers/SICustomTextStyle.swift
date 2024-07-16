//
//  File.swift
//  
//
//  Created by Nausheen Khan on 16/07/24.
//

import SwiftUI

public struct SICustomTextStyle {
    var color: Color
    var size: CGFloat
    var weight: Font.Weight
    var design: Font.Design
    var customFontName: String?
    var systemFontStyle: Font?
    
    public init(customFontName: String? = nil, systemFontStyle: Font? = nil, 
                color: Color = .primary, size: CGFloat = .zero,
                weight: Font.Weight = .regular, design: Font.Design = .default) {
        self.color = color
        self.size = size
        self.weight = weight
        self.design = design
        self.customFontName = customFontName
        self.systemFontStyle = systemFontStyle
    }
    
    public static let defaultSICustomTextStyle = SICustomTextStyle(customFontName: nil, systemFontStyle: .body, 
                                                                   color: .primary, size: 16,
                                                                   weight: .regular, design: .default
    )
}

struct SICustomTextStyleModifier: ViewModifier {
    var style: SICustomTextStyle
    
    func body(content: Content) -> some View {
        if let customFontName = style.customFontName, let customFont = UIFont(name: customFontName, size: style.size) {
            content
                .font(Font(customFont))
                .foregroundColor(style.color)
        } else if let systemFontStyle = style.systemFontStyle {
            content
                .font(systemFontStyle.withSize(style.size, weight: style.weight, design: style.design))
                .foregroundColor(style.color)
        } else {
            content
                .font(.system(size: style.size, weight: style.weight, design: style.design))
                .foregroundColor(style.color)
        }
    }
}

extension View {
    public func applyCustomSITextStyle(_ style: SICustomTextStyle) -> some View {
        modifier(SICustomTextStyleModifier(style: style))
    }
}
