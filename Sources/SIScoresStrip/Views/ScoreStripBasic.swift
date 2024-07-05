//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 04/07/24.
//

import SwiftUI

public struct ScoreStripBasic: View {
    private var backgroundColor: Color = .clear
    private var cardCornerRadius: CGFloat = 0
    private var statusIndicatorColor: Color = .clear
    
    private var isActionButtonHidden: Bool = true
    private var actionButtonBackground: Color = .clear
    private var actionButtonForegroundColor: Color = .clear
    
    public init(backgroundColor: Color = .clear,
                cardCornerRadius: CGFloat = 0,
                statusIndicatorColor: Color = .clear) {
        self.backgroundColor = backgroundColor
        self.cardCornerRadius = cardCornerRadius
        self.statusIndicatorColor = statusIndicatorColor
    }
    
    public init(backgroundColor: Color = .clear,
                cardCornerRadius: CGFloat = 0,
                statusIndicatorColor: Color = .clear,
                isActionButtonHidden: Bool = true,
                actionButtonBackgroundColor: Color = .clear,
                actionButtonForegroundColor: Color = .clear) {
        self.backgroundColor = backgroundColor
        self.cardCornerRadius = cardCornerRadius
        self.statusIndicatorColor = statusIndicatorColor
        self.isActionButtonHidden = isActionButtonHidden
        self.actionButtonBackground = actionButtonBackgroundColor
        self.actionButtonForegroundColor = actionButtonForegroundColor
    }
    
    public var body: some View {
        VStack(spacing: 30) {
            Text("Ireland Provincial ODI Cup 2nd Match")
                .padding(.all, 10)
                .background(Color.red)
                .cornerRadius(8, corners: [.topLeft, .topRight])
            VStack(spacing: 30) {
                basicScoreStripHeaderView
                basicScoresStripTeamDetailsView
                if isActionButtonHidden == false {
                    basicScoresStripActionButtonView
                }
            }
        }
        .padding(.all, 15)
        .background(backgroundColor)
        .cornerRadius(cardCornerRadius)
    }
    
    private var basicScoreStripHeaderView: some View {
        HStack {
            Text("Match 17, 21 May 2023")
            Spacer()
            Text("Upcoming")
                .padding(.all, 5)
                .background(statusIndicatorColor)
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
                    .foregroundColor(actionButtonForegroundColor)
                    .bold()
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(actionButtonBackground)
                    .clipShape(.capsule)
                    .shadow(radius: 10)
            }
        }
    }
}

#Preview {
    ScoreStripBasic()
}
