//
//  File.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import Foundation

public struct SIScoresStripTypeOneListingModel {
    public var upcomingScoreStripModel: SIUpcomingScoreStripTypeOneModel
    public var liveScoreStripModel: SILiveScoreStripTypeOneModel
    public var resultScoreStripModel: SIResultScoreStripTypeOneModel
    public var scoreStripListingType: SIScoreStripListingType
    
    public init(upcomingScoreStripModel: SIUpcomingScoreStripTypeOneModel, 
                liveScoreStripModel: SILiveScoreStripTypeOneModel,
                resultScoreStripModel: SIResultScoreStripTypeOneModel,
                scoreStripListingType: SIScoreStripListingType = .horizontal) {
        self.upcomingScoreStripModel = upcomingScoreStripModel
        self.liveScoreStripModel = liveScoreStripModel
        self.resultScoreStripModel = resultScoreStripModel
        self.scoreStripListingType = scoreStripListingType
    }
    
    public enum SIScoreStripListingType {
        case vertical
        case horizontal
    }
}
