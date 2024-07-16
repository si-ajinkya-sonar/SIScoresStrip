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
    
    public var headerTitleStyle: SICustomTextStyle
    
    public var headerStatusStyle: SICustomTextStyle
    public var headerStatusBackgroundColor: Color
    public var headerStatsCornerRadius: CGFloat
    
    public var teamNameStyle: SICustomTextStyle
    public var dateTimeStyle: SICustomTextStyle
    
    public var resultStyle: SICustomTextStyle
    
    public init(cardBackgroundColor: Color = .clear, cardCornerRadius: CGFloat = .zero,
                headerTitleStyle: SICustomTextStyle = .defaultSICustomTextStyle,
                headerStatusStyle: SICustomTextStyle = .defaultSICustomTextStyle,
                headerStatusBackgroundColor: Color = .clear, headerStatsCornerRadius: CGFloat = .zero,
                teamNameStyle: SICustomTextStyle = .defaultSICustomTextStyle,
                dateTimeStyle: SICustomTextStyle = .defaultSICustomTextStyle,
                resultStyle: SICustomTextStyle = .defaultSICustomTextStyle) {
        self.cardBackgroundColor = cardBackgroundColor
        self.cardCornerRadius = cardCornerRadius
        self.headerTitleStyle = headerTitleStyle
        self.headerStatusStyle = headerStatusStyle
        self.headerStatusBackgroundColor = headerStatusBackgroundColor
        self.headerStatsCornerRadius = headerStatsCornerRadius
        self.teamNameStyle = teamNameStyle
        self.dateTimeStyle = dateTimeStyle
        self.resultStyle = resultStyle
    }
    
    /*
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
     */
}
