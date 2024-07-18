//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 13/07/24.
//

import SwiftUI

public struct SIScoresStripTypeOneVerticalListView: View {
    private let scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel
    
    public init(scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel) {
        self.scoresStipTypeOneListingModel = scoresStipTypeOneListingModel
    }
    
    public var body: some View {
        List {
            ForEach(0..<10) { index in
                if index < 3 {
                    SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: scoresStipTypeOneListingModel.upcomingScoreStripModel)
                } else if index > 3 && index < 7 {
                    SILiveScoreStripTypeOne(scoreStripLiveModelTypeOne: scoresStipTypeOneListingModel.liveScoreStripModel)
                } else {
                    SIResultScoreStripTypeOne(scoresStripResultTypeOneModel: scoresStipTypeOneListingModel.resultScoreStripModel)
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    SIScoresStripTypeOneVerticalListView(scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel(upcomingScoreStripModel: SIUpcomingScoreStripTypeOneModel(), liveScoreStripModel: SILiveScoreStripTypeOneModel(), resultScoreStripModel: SIResultScoreStripTypeOneModel()))
}
