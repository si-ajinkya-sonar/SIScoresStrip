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
        switch scoresStipTypeOneListingModel.scoreStripListingType {
        case .vertical:
            SIScoresStripVerticalListView(count: 10,
                                          scoresStipTypeOneListingModel: scoresStipTypeOneListingModel)
        case .horizontal:
            SIScoresStripHorizontalListView(count: 10,
                                            scoresStipTypeOneListingModel: scoresStipTypeOneListingModel)
        }
    }
}

struct SIScoresStripHorizontalListView: View {
    let count: Int
    let scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel
    var body: some View {
        VStack {
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0..<count, id: \.self) { index in
                        VStack(spacing: .zero) {
                            if index <= 2 {
                                SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: scoresStipTypeOneListingModel.upcomingScoreStripModel)
                            } else if index > 2 && index < 6 {
                                SILiveScoreStripTypeOne(scoreStripLiveModelTypeOne: scoresStipTypeOneListingModel.liveScoreStripModel)
                            } else {
                                SIResultScoreStripTypeOne(scoresStripResultTypeOneModel: scoresStipTypeOneListingModel.resultScoreStripModel)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width/1.1)
                    }
                }
                .padding(.leading, 15)
            }
            Spacer()
        }
    }
}

struct SIScoresStripVerticalListView: View {
    let count: Int
    let scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 15) {
                ForEach(0..<count, id: \.self) { index in
                    if index <= 2 {
                        SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: scoresStipTypeOneListingModel.upcomingScoreStripModel)
                    } else if index > 2 && index < 7 {
                        SILiveScoreStripTypeOne(scoreStripLiveModelTypeOne: scoresStipTypeOneListingModel.liveScoreStripModel)
                    } else {
                        SIResultScoreStripTypeOne(scoresStripResultTypeOneModel: scoresStipTypeOneListingModel.resultScoreStripModel)
                    }
                }
            }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    SIScoresStripTypeOneVerticalListView(scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel(
        upcomingScoreStripModel: SIUpcomingScoreStripTypeOneModel(),
        liveScoreStripModel: SILiveScoreStripTypeOneModel(),
        resultScoreStripModel: SIResultScoreStripTypeOneModel(),
        scoreStripListingType: .horizontal))
}