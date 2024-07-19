//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI

struct SIResultScoreStripTypeOne: View {
    let scoresStripResultTypeOneModel: SIResultScoreStripTypeOneModel
    
    var body: some View {
        VStack(spacing: 30) {
            resultsScoreStripTopView
            resultsScoreStripMiddleView
            resultsScoreStrippBottomView
        }
        .padding(.all, 15)
        .background(scoresStripResultTypeOneModel.cardBackgroundColor)
        .cornerRadius(scoresStripResultTypeOneModel.cardCornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: scoresStripResultTypeOneModel.cardCornerRadius)
                .stroke(Color.black, lineWidth: 0.4)
        )
    }
    
    private var resultsScoreStripTopView: some View {
        HStack {
            Text("Match 26")
            Spacer()
            Text("Result")
                .padding(.all, 5)
                .background(scoresStripResultTypeOneModel.statusBackgroundColor)
                .cornerRadius(scoresStripResultTypeOneModel.statusCornerRadius)
        }
    }
    
    private var resultsScoreStripMiddleView: some View {
        HStack(alignment: scoresStripResultTypeOneModel.scoresDisplayAlignment) {
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: "KKR", 
                                                    scoreStripTypeOneProtocol: scoresStripResultTypeOneModel)
            SIScoreStripScoreDisplayView(scoresArr: Utility.shared.processString("28 (5.3) & 23/0 (1.0)"))
            Spacer()
            Text("VS")
            Spacer()
            SIScoreStripScoreDisplayView(scoresArr: Utility.shared.processString("28 (5.3) & 21/2 (1.0)"))
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: "PBKS", 
                                                    scoreStripTypeOneProtocol: scoresStripResultTypeOneModel)
        }
        .frame(height: 70)
    }
    
    private var resultsScoreStrippBottomView: some View {
        Text("KKR WON THE MATCH AGAINST PBKS")
            .applyCustomSITextStyle(scoresStripResultTypeOneModel.footerTitleStyle)
            .lineLimit(1)
            .fixedSize(horizontal: true, vertical: false)
    }
}

#Preview {
    SIResultScoreStripTypeOne(scoresStripResultTypeOneModel: SIResultScoreStripTypeOneModel())
}
