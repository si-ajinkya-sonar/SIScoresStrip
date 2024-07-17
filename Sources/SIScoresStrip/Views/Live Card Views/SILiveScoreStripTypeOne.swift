//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI

struct SILiveScoreStripTypeOne: View {
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
            Spacer()
            Text("Live")
                .padding(.all, 5)
                .background(Color.red)
                .cornerRadius(3)
        }
    }
    
    private var liveScoreStripMiddleView: some View {
        HStack {
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: "KKR")
            SIScoreStripScoreDisplayView(scoresArr: Utility.shared.processString("28 (5.3) & 23/0 (1.0)"))
            Spacer()
            Text("VS")
            Spacer()
            SIScoreStripScoreDisplayView(scoresArr: Utility.shared.processString("Yet to Bat"))
            SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                                    teamName: "PBKS")
        }
    }
    
    private var liveScoreStrippBottomView: some View {
        VStack {
            Text("Amar Singh Club Ground, Srinagar")
        }
    }
    
}

#Preview {
    SILiveScoreStripTypeOne()
}
