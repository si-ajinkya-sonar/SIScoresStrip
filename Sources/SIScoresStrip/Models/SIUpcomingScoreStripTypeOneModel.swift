//
//  File.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI

public struct SIUpcomingScoreStripTypeOneModel: SIScoreStripTypeOneProtocol {
    public var cardBackgroundColor: Color
    public var cardCornerRadius: CGFloat
    public var headerTitleStyle: SICustomTextStyle
    public var statusBackgroundColor: Color
    public var statusCornerRadius: CGFloat
    public var teamLogoCornerRadius: CGFloat
    public var teamNameStyle: SICustomTextStyle
    public var footerTitleStyle: SICustomTextStyle
    public var dateTimeTextStyle: SICustomTextStyle
    
    public init(cardBackgroundColor: Color = .clear, cardCornerRadius: CGFloat = .zero, headerTitleStyle: SICustomTextStyle = .defaultSICustomTextStyle, statusBackgroundColor: Color = .clear, statusCornerRadius: CGFloat = .zero, teamLogoCornerRadius: CGFloat = .zero, teamNameStyle: SICustomTextStyle = .defaultSICustomTextStyle, footerTitleStyle: SICustomTextStyle = .defaultSICustomTextStyle, dateTimeTextStyle: SICustomTextStyle = .defaultSICustomTextStyle) {
        self.cardBackgroundColor = cardBackgroundColor
        self.cardCornerRadius = cardCornerRadius
        self.headerTitleStyle = headerTitleStyle
        self.statusBackgroundColor = statusBackgroundColor
        self.statusCornerRadius = statusCornerRadius
        self.teamLogoCornerRadius = teamLogoCornerRadius
        self.teamNameStyle = teamNameStyle
        self.footerTitleStyle = footerTitleStyle
        self.dateTimeTextStyle = dateTimeTextStyle
    }
}
