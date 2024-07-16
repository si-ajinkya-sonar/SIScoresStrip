//
//  File.swift
//  
//
//  Created by Nausheen Khan on 15/07/24.
//

import Foundation
import SwiftUI

public struct SIScoresStripTypeOneModel {
    public var cardBackgroundColor: Color
    public var cardCornerRadius: CGFloat
    
    public var headerTitleFont: SICustomTextStyle
    public var headerStatusFont: Font
    public var headerStatusBackgroundColor: Color
    public var headerStatusTitleForegroundColor: Color
    public var headerStatsCornerRadius: CGFloat
    
    public init(cardBackgroundColor: Color = .clear, cardCornerRadius: CGFloat = .zero,
                headerStatusFont: Font = .caption,
                headerTitleFont: SICustomTextStyle = SICustomTextStyle.defaultSICustomTextStyle,
                headerStatusBackgroundColor: Color = .clear, headerStatusTitleForegroundColor: Color = .black,
                headerStatsCornerRadius: CGFloat = .zero) {
        self.cardBackgroundColor = cardBackgroundColor
        self.cardCornerRadius = cardCornerRadius
        
        self.headerTitleFont = headerTitleFont
        self.headerStatusFont = headerStatusFont
        self.headerStatusBackgroundColor = headerStatusBackgroundColor
        self.headerStatusTitleForegroundColor = headerStatusTitleForegroundColor
        self.headerStatsCornerRadius = headerStatsCornerRadius
        
        
    }
}
