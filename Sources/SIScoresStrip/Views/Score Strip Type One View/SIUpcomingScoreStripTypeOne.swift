//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 13/07/24.
//

import SwiftUI

struct SIUpcomingScoreStripTypeOne: View {
    private let scoresStripTypeOneModel: SIScoresStripTypeOneModel
    
    public init(scoresStripTypeOneModel: SIScoresStripTypeOneModel) {
        self.scoresStripTypeOneModel = scoresStripTypeOneModel
    }
    
    var body: some View {
        VStack(spacing: 30) {
            upcomingScoreStripTopView
            upcomingScoresStripMiddleView
            Text("Amar Singh Club Ground, Srinagar")
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 15)
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
                .applyCustomSITextStyle(scoresStripTypeOneModel.headerTitleFont)
            Spacer()
            Text("Upcoming")
                .font(scoresStripTypeOneModel.headerStatusFont)
                .padding(.all, 5)
                .foregroundColor(scoresStripTypeOneModel.headerStatusTitleForegroundColor)
                .background(scoresStripTypeOneModel.headerStatusBackgroundColor)
                .cornerRadius(scoresStripTypeOneModel.headerStatsCornerRadius)
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
}

private struct ScoreStripTypeOneTeamInfoRightLogoView: View {
    let scoresStripTypeOneModel: SIScoresStripTypeOneModel
    
    var body: some View {
        HStack {
            Text("PBKS")
                .font(.callout)
                .foregroundColor(.black)
            
            if let image = UIImage(named: "kkrlogo", in: .module, with: .none) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
        }
    }
}

private struct ScoreStripTypeOneTeamInfoLeftLogoView: View {
    let scoresStripTypeOneModel: SIScoresStripTypeOneModel
    
    var body: some View {
        HStack {
            if let image = UIImage(named: "kkrlogo", in: .module, with: .none) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            
            Text("KKR")
                .font(.callout)
                .foregroundColor(.black)
        }
    }
}

private struct ScoreStripTypeOneDateTimeView: View {
    let scoresStripTypeOneModel: SIScoresStripTypeOneModel
    
    var body: some View {
        VStack {
            Text("Mar 17, 2024")
            Text("23:00")
        }
    }
}

#Preview {
    SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: SIScoresStripTypeOneModel(cardBackgroundColor: .green, cardCornerRadius: 8,
                                                                                   headerStatusBackgroundColor: .purple, headerStatusTitleForegroundColor: .white, headerStatsCornerRadius: 3))
}
