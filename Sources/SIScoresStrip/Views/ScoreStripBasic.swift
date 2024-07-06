//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 04/07/24.
//

import SwiftUI

public struct ScoreStripBasic: View {
    public var scoresStripBasicModel: ScoresStripBasicModel
    
    public init(scoresStripBasicModel: ScoresStripBasicModel) {
        self.scoresStripBasicModel = scoresStripBasicModel
    }
    
    public var body: some View {
        VStack(spacing: 30) {
            basicScoreStripTitleView
            VStack(spacing: 30) {
                basicScoreStripHeaderView
                basicScoresStripTeamDetailsView
                if scoresStripBasicModel.hideActionButton == false {
                    basicScoresStripActionButtonView
                }
            }
        }
        .padding(.all, 15)
        .background(scoresStripBasicModel.backgroundColor)
        .cornerRadius(scoresStripBasicModel.cardCornerRadius)
    }
    
    private var basicScoreStripTitleView: some View {
        Text("Ireland Provincial ODI Cup 2nd Match")
            .padding(.all, 10)
            .background(scoresStripBasicModel.scoresStripTitleBackgroundColor)
            .foregroundColor(scoresStripBasicModel.scoreStripTitleForegroundColor)
            .cornerRadius(8, corners: [.topLeft, .topRight])
    }
    
    private var basicScoreStripHeaderView: some View {
        HStack {
            Text("Match 17, 21 May 2023")
            Spacer()
            Text("Upcoming")
                .padding(.all, 5)
                .background(scoresStripBasicModel.statusIndicatorColor)
                .clipShape(.rect(cornerRadius: 8))
        }
    }
    
    private var basicScoresStripTeamDetailsView: some View {
        HStack(alignment: .center) {
            HStack {
                Text("KKR")
                    .font(.headline)
                
                if let image = UIImage(named: "kkrlogo", in: .module, with: .none) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .cornerRadius(8)
                }
            }
            
            Spacer()
            
            Circle()
                .frame(width: 40, height: 40)
                .overlay(
                    Text("VS")
                        .foregroundColor(.white)
                        .bold()
                )
            
            Spacer()
            
            HStack {
                if let image = UIImage(named: "kkrlogo", in: .module, with: .none) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .cornerRadius(8)
                }
                
                Text("KKR")
                    .font(.headline)
            }
        }
    }
    
    private var basicScoresStripActionButtonView: some View {
        VStack {
            Button {
                print("Action Button Tapped")
            } label: {
                Text("Action Button")
                    .foregroundColor(scoresStripBasicModel.actionButtonForegroundColor)
                    .bold()
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(scoresStripBasicModel.actionButtonBackground)
                    .clipShape(.capsule)
                    .shadow(radius: 10)
            }
        }
    }
}

#Preview {
    ScoreStripBasic(scoresStripBasicModel: ScoresStripBasicModel())
}
