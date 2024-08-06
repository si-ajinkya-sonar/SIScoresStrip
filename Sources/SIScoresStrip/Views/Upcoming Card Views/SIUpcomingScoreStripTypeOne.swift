//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 13/07/24.
//

import SwiftUI

struct SIUpcomingScoreStripTypeOne: View {
    private let scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel
    private let scoresStripDataModel: SIScoresStripMatchModel
    private let scoresStripStyleDetail: ScoresStripListingUIModelChildStyles?
    
    public init(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel, 
                scoresStripDataModel: SIScoresStripMatchModel,
                scoresStripStyleDetail: ScoresStripListingUIModelChildStyles? = nil) {
        self.scoresStripTypeOneModel = scoresStripTypeOneModel
        self.scoresStripDataModel = scoresStripDataModel
        self.scoresStripStyleDetail = scoresStripStyleDetail
    }
    
    var body: some View {
        VStack(spacing: 30) {
            upcomingScoreStripTopView
            upcomingScoresStripMiddleView
            upcomingScoresStripBottomView
        }
        .padding(.all, 15)
        // .background(scoresStripTypeOneModel.cardBackgroundColor)
        .background(Color(hex: scoresStripStyleDetail?.backgroundColor ?? .blank))
        // .cornerRadius(scoresStripTypeOneModel.cardCornerRadius)
        .cornerRadius(scoresStripStyleDetail?.cornerRadius ?? .zero)
        .overlay(
            RoundedRectangle(cornerRadius: scoresStripTypeOneModel.cardCornerRadius)
                .stroke(Color.black, lineWidth: 0.4)
                .cornerRadius(scoresStripStyleDetail?.cornerRadius ?? .zero)
        )
    }
    
    private var upcomingScoreStripTopView: some View {
        HStack {
            Text(scoresStripDataModel.eventName ?? .blank)
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
            ScoreStripTypeOneTeamInfoRightLogoView(scoresStripTypeOneModel: scoresStripTypeOneModel, 
                                                   scoresStripDataModel: scoresStripDataModel)
            Spacer()
            ScoreStripTypeOneDateTimeView(scoresStripTypeOneModel: scoresStripTypeOneModel)
            Spacer()
            ScoreStripTypeOneTeamInfoLeftLogoView(scoresStripTypeOneModel: scoresStripTypeOneModel, 
                                                  scoresStripDataModel: scoresStripDataModel)
        }
        .frame(height: 70)
    }
    
    private var upcomingScoresStripBottomView: some View {
        Text(scoresStripDataModel.venueName ?? .blank)
            .applyCustomSITextStyle(scoresStripTypeOneModel.footerTitleStyle)
            .lineLimit(2)
            .multilineTextAlignment(.center)
            .truncationMode(.tail)
            .frame(maxWidth: .infinity, alignment: .center)
    }
}

private struct ScoreStripTypeOneTeamInfoRightLogoView: View {
    let scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel
    let scoresStripDataModel: SIScoresStripMatchModel
    
    var body: some View {
        HStack {
            Text(scoresStripDataModel.participants?.first?.shortName ?? "")
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
    let scoresStripDataModel: SIScoresStripMatchModel
    
    var body: some View {
        HStack {
            Image("kkrlogo", bundle: .module)
                .resizable()
                .scaledToFit()
                .cornerRadius(scoresStripTypeOneModel.teamLogoCornerRadius)
                .frame(width: 50, height: 50)
            Text(scoresStripDataModel.participants?.last?.shortName ?? .blank)
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

/*
 #Preview {
     SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel(
         cardBackgroundColor: .clear, cardCornerRadius: 8,
         statusBackgroundColor: .clear, statusCornerRadius: 3))
 }
 */
