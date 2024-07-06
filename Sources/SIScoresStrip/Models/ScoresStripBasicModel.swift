//
//  File.swift
//  
//
//  Created by Nausheen Khan on 06/07/24.
//

import SwiftUI

public struct ScoresStripBasicModel {
    public var backgroundColor: Color
    public var cardCornerRadius: CGFloat = .zero
    
    public var scoresStripTitleBackgroundColor: Color = .clear
    public var scoreStripTitleForegroundColor: Color = .black
    public var statusIndicatorColor: Color = .clear
    
    public var hideActionButton: Bool = false
    public var actionButtonBackground: Color = .clear
    public var actionButtonForegroundColor: Color = .clear
    
    public var scoreStripFont: Font? = nil
    
    public init(backgroundColor: Color = .clear, cardCornerRadius: CGFloat = .zero,
         scoresStripTitleBackgroundColor: Color = .clear, scoreStripTitleForegroundColor: Color = .black,
         statusIndicatorColor: Color = .clear, hideActionButton: Bool = false,
         actionButtonBackground: Color = .clear, actionButtonForegroundColor: Color = .black,
         scoreStripFont: Font? = nil) {
        self.backgroundColor = backgroundColor
        self.cardCornerRadius = cardCornerRadius
        self.scoresStripTitleBackgroundColor = scoresStripTitleBackgroundColor
        self.scoreStripTitleForegroundColor = scoreStripTitleForegroundColor
        self.statusIndicatorColor = statusIndicatorColor
        self.hideActionButton = hideActionButton
        self.actionButtonBackground = actionButtonBackground
        self.actionButtonForegroundColor = actionButtonForegroundColor
        self.scoreStripFont = scoreStripFont
    }
    
}
