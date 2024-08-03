//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 13/07/24.
//

import SwiftUI
import SINetworking

public struct SIScoresStripTypeOneListingView: View {
    @StateObject private var scoresStripViewModel: SIScoresStripViewModel
    
    private let scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel
    
    public init(scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel) {
        self.scoresStipTypeOneListingModel = scoresStipTypeOneListingModel
        _scoresStripViewModel = StateObject(wrappedValue: SIScoresStripViewModel(url: scoresStipTypeOneListingModel.scoreListingUrl))
    }
    
    public var body: some View {
        switch scoresStipTypeOneListingModel.scoreStripListingType {
        case .vertical:
            SIScoresStripVerticalListView(count: 10,
                                          scoresStipTypeOneListingModel: scoresStipTypeOneListingModel)
            .onAppear {
                Task {
                    await scoresStripViewModel.getMatchListingData()
                }
            }
        case .horizontal:
            SIScoresStripHorizontalListView(count: 10,
                                            scoresStipTypeOneListingModel: scoresStipTypeOneListingModel)
            .onAppear {
                Task {
                    await scoresStripViewModel.getMatchListingData()
                }
            }
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
        .frame(height: 230)
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
    SIScoresStripTypeOneListingView(scoresStipTypeOneListingModel: SIScoresStripTypeOneListingModel(
        upcomingScoreStripModel: SIUpcomingScoreStripTypeOneModel(),
        liveScoreStripModel: SILiveScoreStripTypeOneModel(),
        resultScoreStripModel: SIResultScoreStripTypeOneModel(),
        scoreStripListingType: .horizontal))
}
