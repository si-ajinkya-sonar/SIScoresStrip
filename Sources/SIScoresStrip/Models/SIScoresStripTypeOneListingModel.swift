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
    
    public init(upcomingScoreStripModel: SIUpcomingScoreStripTypeOneModel, liveScoreStripModel: SILiveScoreStripTypeOneModel, resultScoreStripModel: SIResultScoreStripTypeOneModel) {
        self.upcomingScoreStripModel = upcomingScoreStripModel
        self.liveScoreStripModel = liveScoreStripModel
        self.resultScoreStripModel = resultScoreStripModel
    }
}
