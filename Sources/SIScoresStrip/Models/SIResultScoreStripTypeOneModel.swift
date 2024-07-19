//
//  File.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI

public struct SIResultScoreStripTypeOneModel: SIScoreStripTypeOneProtocol {
    public var cardBackgroundColor: Color
    public var cardCornerRadius: CGFloat
    public var headerTitleStyle: SICustomTextStyle
    public var statusBackgroundColor: Color
    public var statusCornerRadius: CGFloat
    public var statusTitleStyle: SICustomTextStyle
    public var teamLogoCornerRadius: CGFloat
    public var teamNameStyle: SICustomTextStyle
    public var footerTitleStyle: SICustomTextStyle
    public var scoresDisplayTextStyle: SICustomTextStyle
    public var scoresDisplayAlignment: VerticalAlignment
    public var versusTextStyle: SICustomTextStyle
    
    public init(cardBackgroundColor: Color = .clear, cardCornerRadius: CGFloat = .zero, headerTitleStyle: SICustomTextStyle = .defaultSICustomTextStyle, statusBackgroundColor: Color = .clear, statusCornerRadius: CGFloat = .zero, statusTitleStyle: SICustomTextStyle = .defaultSICustomTextStyle, teamLogoCornerRadius: CGFloat = .zero, teamNameStyle: SICustomTextStyle = .defaultSICustomTextStyle, footTitleStyle: SICustomTextStyle = .defaultSICustomTextStyle, scoresDisplayTextStyle: SICustomTextStyle = .defaultSICustomTextStyle, scoresDisplayAlignment: VerticalAlignment = .top, versusTextStyle: SICustomTextStyle = .defaultSICustomTextStyle) {
        self.cardBackgroundColor = cardBackgroundColor
        self.cardCornerRadius = cardCornerRadius
        self.headerTitleStyle = headerTitleStyle
        self.statusBackgroundColor = statusBackgroundColor
        self.statusCornerRadius = statusCornerRadius
        self.statusTitleStyle = statusTitleStyle
        self.teamLogoCornerRadius = teamLogoCornerRadius
        self.teamNameStyle = teamNameStyle
        self.footerTitleStyle = footTitleStyle
        self.scoresDisplayTextStyle = scoresDisplayTextStyle
        self.scoresDisplayAlignment = scoresDisplayAlignment
        self.versusTextStyle = versusTextStyle
    }
}
