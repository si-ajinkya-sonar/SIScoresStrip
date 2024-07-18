//
//  File.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI

public protocol SIScoreStripTypeOneProtocol {
    var cardBackgroundColor: Color {get}
    var cardCornerRadius: CGFloat {get}
    var headerTitleStyle: SICustomTextStyle {get}
    var statusBackgroundColor: Color {get}
    var statusCornerRadius: CGFloat {get}
    var statusTitleStyle: SICustomTextStyle {get}
    var teamLogoCornerRadius: CGFloat {get}
    var teamNameStyle: SICustomTextStyle {get}
    var footerTitleStyle: SICustomTextStyle {get}
}
