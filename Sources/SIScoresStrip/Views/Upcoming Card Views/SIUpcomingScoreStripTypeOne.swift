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
        .onAppear {
            print("Upcoming Test: \(scoresStripTypeOneModel.statusTitleStyle)")
        }
    }
    
    private var upcomingScoreStripTopView: some View {
        HStack {
            Text("Match 26")
                .applyCustomSITextStyle(scoresStripTypeOneModel.headerTitleStyle)
            Spacer()
            Text("Upcoming")
                .applyCustomSITextStyle(scoresStripTypeOneModel.statusTitleStyle)
                .padding(.all, 5)
                .background(scoresStripTypeOneModel.statusBackgroundColor)
                .cornerRadius(scoresStripTypeOneModel.statusCornerRadius)
        }
    }
    
    private var upcomingScoresStripMiddleView: some View {
        HStack(alignment: scoresStripTypeOneModel.dateTimeDisplayAlignment) {
            ScoreStripTypeOneTeamInfoRightLogoView(scoresStripTypeOneModel: scoresStripTypeOneModel)
            Spacer()
            ScoreStripTypeOneDateTimeView(scoresStripTypeOneModel: scoresStripTypeOneModel)
            Spacer()
            ScoreStripTypeOneTeamInfoLeftLogoView(scoresStripTypeOneModel: scoresStripTypeOneModel)
        }
        .frame(height: 70)
    }
    
    private var upcomingScoresStripBottomView: some View {
        Text("Amar Singh Club Ground, Srinagar")
            .applyCustomSITextStyle(scoresStripTypeOneModel.footerTitleStyle)
            .lineLimit(1)
            .fixedSize(horizontal: true, vertical: false)
    }
}

private struct ScoreStripTypeOneTeamInfoRightLogoView: View {
    let scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel
    
    var body: some View {
        HStack {
            Text("PBKS")
                .applyCustomSITextStyle(scoresStripTypeOneModel.teamNameStyle)
                .lineLimit(1)
                .fixedSize(horizontal: true, vertical: false)
            
            Image("kkrlogo", bundle: .module)
                .resizable()
                .scaledToFit()
                .cornerRadius(scoresStripTypeOneModel.teamLogoCornerRadius)
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
                .cornerRadius(scoresStripTypeOneModel.teamLogoCornerRadius)
                .frame(width: 50, height: 50)
            Text("KKR")
                .applyCustomSITextStyle(scoresStripTypeOneModel.teamNameStyle)
                .lineLimit(1)
                .fixedSize(horizontal: true, vertical: false)
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
    SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel(
        cardBackgroundColor: .clear, cardCornerRadius: 8,
        statusBackgroundColor: .clear, statusCornerRadius: 3))
}
