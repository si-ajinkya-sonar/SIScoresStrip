//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 13/07/24.
//

import SwiftUI

struct SIUpcomingScoreStripTypeOne: View {
    private let scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel
    
    public init(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel) {
        self.scoresStripTypeOneModel = scoresStripTypeOneModel
    }
    
    var body: some View {
        VStack(spacing: 30) {
            upcomingScoreStripTopView
            upcomingScoresStripMiddleView
            upcomingScoresStripBottomView
        }
        .padding(.all, 15)
        .background(scoresStripTypeOneModel.cardBackgroundColor)
        .cornerRadius(scoresStripTypeOneModel.cardCornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: scoresStripTypeOneModel.cardCornerRadius)
                .stroke(Color.black, lineWidth: 0.4)
        )
    }
    
    private var upcomingScoreStripTopView: some View {
        HStack {
            Text("Match 26")
                .applyCustomSITextStyle(scoresStripTypeOneModel.headerTitleStyle)
            Spacer()
            Text("Upcoming")
                .applyCustomSITextStyle(scoresStripTypeOneModel.headerTitleStyle)
                .padding(.all, 5)
                .background(scoresStripTypeOneModel.statusBackgroundColor)
                .cornerRadius(scoresStripTypeOneModel.statusCornerRadius)
        }
    }
    
    private var upcomingScoresStripMiddleView: some View {
        VStack {
            HStack(alignment: .top) {
                ScoreStripTypeOneTeamInfoRightLogoView(scoresStripTypeOneModel: scoresStripTypeOneModel)
                Spacer()
                ScoreStripTypeOneDateTimeView(scoresStripTypeOneModel: scoresStripTypeOneModel)
                Spacer()
                ScoreStripTypeOneTeamInfoLeftLogoView(scoresStripTypeOneModel: scoresStripTypeOneModel)
            }
        }
    }
    
    private var upcomingScoresStripBottomView: some View {
        VStack {
            Text("Amar Singh Club Ground, Srinagar")
                .applyCustomSITextStyle(scoresStripTypeOneModel.footerTitleStyle)
        }
    }
}

private struct ScoreStripTypeOneTeamInfoRightLogoView: View {
    let scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel
    
    var body: some View {
        HStack {
            Text("PBKS")
                .applyCustomSITextStyle(scoresStripTypeOneModel.teamNameStyle)
            
            Image("kkrlogo", bundle: .module)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
        }
    }
}

private struct ScoreStripTypeOneTeamInfoLeftLogoView: View {
    let scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel
    
    var body: some View {
        HStack {
            Image("kkrlogo", bundle: .module)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Text("KKR")
                .applyCustomSITextStyle(scoresStripTypeOneModel.teamNameStyle)
        }
    }
}

private struct ScoreStripTypeOneDateTimeView: View {
    let scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel
    
    var body: some View {
        VStack {
            Text("Mar 17, 2024")
            Text("23:00")
        }
        .applyCustomSITextStyle(scoresStripTypeOneModel.dateTimeTextStyle)
    }
}

#Preview {
    SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel(cardBackgroundColor: .green, cardCornerRadius: 8,
                                                                                          statusBackgroundColor: .purple, statusCornerRadius: 3))
}
