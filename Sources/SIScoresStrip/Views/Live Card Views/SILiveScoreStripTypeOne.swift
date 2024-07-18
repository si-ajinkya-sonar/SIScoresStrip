//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI

struct SILiveScoreStripTypeOne: View {
    let scoreStripLiveModelTypeOne: SILiveScoreStripTypeOneModel
    
    var body: some View {
        VStack(spacing: 30) {
            liveScoreStripTopView
            liveScoreStripMiddleView
            liveScoreStrippBottomView
        }
        .padding(.all, 15)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 0.4)
        )
    }
    
    private var liveScoreStripTopView: some View {
        HStack {
            Text("Match 26")
                .applyCustomSITextStyle(scoreStripLiveModelTypeOne.headerTitleStyle)
            Spacer()
            Text("Live")
                .applyCustomSITextStyle(scoreStripLiveModelTypeOne.headerTitleStyle)
                .padding(.all, 5)
                .background(Color.red)
                .cornerRadius(3)
        }
    }
    
    private var liveScoreStripMiddleView: some View {
        HStack {
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: "KKR")
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
                                                    teamName: "PBKS")
            .applyCustomSITextStyle(scoreStripLiveModelTypeOne.teamNameStyle)
        }
    }
    
    private var liveScoreStrippBottomView: some View {
        VStack {
            Text("Amar Singh Club Ground, Srinagar")
        }
        .applyCustomSITextStyle(scoreStripLiveModelTypeOne.footerTitleStyle)
    }
    
}

#Preview {
    SILiveScoreStripTypeOne(scoreStripLiveModelTypeOne: SILiveScoreStripTypeOneModel())
}
