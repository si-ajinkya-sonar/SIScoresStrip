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
        .background(Color.gray.opacity(0.3))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 0.4)
        )
    }
    
    private var resultsScoreStripTopView: some View {
        HStack {
            Text("Match 26")
            Spacer()
            Text("Result")
                .padding(.all, 5)
                .background(Color.red)
                .cornerRadius(3)
        }
    }
    
    private var resultsScoreStripMiddleView: some View {
        HStack {
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: "KKR")
            SIScoreStripScoreDisplayView(scoresArr: Utility.shared.processString("28 (5.3) & 23/0 (1.0)"))
            Spacer()
            Text("VS")
            Spacer()
            SIScoreStripScoreDisplayView(scoresArr: Utility.shared.processString("28 (5.3) & 21/2 (1.0)"))
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: "PBKS")
        }
    }
    
    private var resultsScoreStrippBottomView: some View {
        VStack {
            Text("KKR WON THE MATCH AGAINST PBKS")
        }
    }
}

#Preview {
    SIResultScoreStripTypeOne(scoresStripResultTypeOneModel: SIResultScoreStripTypeOneModel())
}
