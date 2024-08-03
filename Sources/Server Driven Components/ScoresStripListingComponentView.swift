//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 03/08/24.
//

import SwiftUI

struct ScoresStripListingComponentView: View, UIComponent {
    @StateObject private var scoresStripViewModel: ScoresStripListingViewModel
    let uiModel: ScoresStripListingUIModel
    
    public init(uiModel: ScoresStripListingUIModel) {
        self.uiModel = uiModel
        _scoresStripViewModel = StateObject(wrappedValue: ScoresStripListingViewModel(url: uiModel.fixturesUrl))
    }
    
    public var uniqueId: String {
        return ComponentType.scorestrip.rawValue
    }
    
    func render() -> AnyView {
        VStack {
            ForEach(scoresStripViewModel.matchListingScoresData, id: \.matchId) { scoreDetail in
                SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel())
            }
        }
        .background(Color.red)
        .onAppear {
            Task {
                await scoresStripViewModel.getMatchListingData()
            }
        }
        .toAnyView()
        
        /*
         List(scoresStripViewModel.matchListingScoresData, id: \.matchId) { scoreDetail in
             SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel())
         }
         .onAppear {
             Task {
                 await scoresStripViewModel.getMatchListingData()
             }
         }
         .toAnyView()
         */
        
        /*
         LazyVStack(spacing: 15) {
             ForEach(scoresStripViewModel.matchListingScoresData, id: \.matchId) { scoreDetail in
                 SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel())
             }
             /*
              ForEach(0..<count, id: \.self) { index in
                  if index <= 2 {
                      SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: scoresStipTypeOneListingModel.upcomingScoreStripModel)
                  } else if index > 2 && index < 7 {
                      SILiveScoreStripTypeOne(scoreStripLiveModelTypeOne: scoresStipTypeOneListingModel.liveScoreStripModel)
                  } else {
                      SIResultScoreStripTypeOne(scoresStripResultTypeOneModel: scoresStipTypeOneListingModel.resultScoreStripModel)
                  }
              }
              */
         }
         .padding(.horizontal, 15)
         .frame(height: CGFloat(uiModel.listHeight ?? 300))
         .onAppear {
             Task {
                 await scoresStripViewModel.getMatchListingData()
             }
         }
         */
    }
    
    var body: some View {
        render()
    }
}
