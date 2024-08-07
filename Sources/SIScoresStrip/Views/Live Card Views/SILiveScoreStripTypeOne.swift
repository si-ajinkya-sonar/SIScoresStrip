//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI
import SIBoilerPlate

struct SILiveScoreStripTypeOne: View {
    let scoreStripLiveModelTypeOne: SILiveScoreStripTypeOneModel
    private let scoresStripDataModel: SIScoresStripMatchModel
    private let scoresStripStyleDetail: ScoresStripListingUIModelChildStyles?
    
    public init(scoreStripLiveModelTypeOne: SILiveScoreStripTypeOneModel,
                scoresStripDataModel: SIScoresStripMatchModel,
                scoresStripStyleDetail: ScoresStripListingUIModelChildStyles? = nil) {
        self.scoreStripLiveModelTypeOne = scoreStripLiveModelTypeOne
        self.scoresStripDataModel = scoresStripDataModel
        self.scoresStripStyleDetail = scoresStripStyleDetail
    }
    
    var body: some View {
        VStack(spacing: 30) {
            liveScoreStripTopView
            liveScoreStripMiddleView
            liveScoreStrippBottomView
        }
        .padding(.all, 15)
        // .background(scoreStripLiveModelTypeOne.cardBackgroundColor)
        .background(Color(hex: scoresStripStyleDetail?.backgroundColor ?? .blank))
        // .cornerRadius(scoreStripLiveModelTypeOne.cardCornerRadius)
        .cornerRadius(scoresStripStyleDetail?.cornerRadius ?? .zero)
        .overlay(
            RoundedRectangle(cornerRadius: scoreStripLiveModelTypeOne.cardCornerRadius)
                .stroke(Color.black, lineWidth: 0.4)
                .cornerRadius(scoresStripStyleDetail?.cornerRadius ?? .zero)
        )
    }
    
    private var liveScoreStripTopView: some View {
        HStack {
            Text(scoresStripDataModel.eventName ?? .blank)
                .applyCustomSITextStyle(scoreStripLiveModelTypeOne.headerTitleStyle)
            Spacer()
            Text("Live")
                .applyCustomSITextStyle(scoreStripLiveModelTypeOne.headerTitleStyle)
                .padding(.all, 5)
                .background(scoreStripLiveModelTypeOne.statusBackgroundColor)
                .cornerRadius(scoreStripLiveModelTypeOne.statusCornerRadius)
        }
    }
    
    private var liveScoreStripMiddleView: some View {
        HStack(alignment: scoreStripLiveModelTypeOne.scoresDisplayAlignment) {
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: scoresStripDataModel.participants?.first?.shortName ?? "",
                                                    scoreStripTypeOneProtocol: scoreStripLiveModelTypeOne)
            .applyCustomSITextStyle(scoreStripLiveModelTypeOne.teamNameStyle)
            
            SIScoreStripScoreDisplayView(scoresArr: Utility.shared.processString("28 (5.3) & 23/0 (1.0)"))
                .applyCustomSITextStyle(scoreStripLiveModelTypeOne.scoresDisplayTextStyle)
            
            Spacer()
            
            Text("VS")
                .applyCustomSITextStyle(scoreStripLiveModelTypeOne.versusTextStyle)
            
            Spacer()
            
            SIScoreStripScoreDisplayView(scoresArr: Utility.shared.processString("Yet to Bat"))
                .applyCustomSITextStyle(scoreStripLiveModelTypeOne.scoresDisplayTextStyle)
            
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: scoresStripDataModel.participants?.last?.shortName ?? "",
                                                    scoreStripTypeOneProtocol: scoreStripLiveModelTypeOne)
            .applyCustomSITextStyle(scoreStripLiveModelTypeOne.teamNameStyle)
        }
        .frame(height: 70)
    }
    
    private var liveScoreStrippBottomView: some View {
        Text(scoresStripDataModel.venueName ?? .blank)
            .applyCustomSITextStyle(scoreStripLiveModelTypeOne.footerTitleStyle)
            .lineLimit(2)
            .multilineTextAlignment(.center)
            .truncationMode(.tail)
            .frame(maxWidth: .infinity, alignment: .center)
    }
    
}

/*
 #Preview {
     SILiveScoreStripTypeOne(scoreStripLiveModelTypeOne: SILiveScoreStripTypeOneModel())
 }
 */
