//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI

struct SIScoreStripTypeOneVerticalTeamInfoView: View {
    let teamLogoImage: String
    let teamName: String
    var body: some View {
        VStack(spacing: 10) {
            Image(teamLogoImage, bundle: .module)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(teamName)
        }
    }
}

#Preview {
    SIScoreStripTypeOneVerticalTeamInfoView(teamLogoImage: "kkrlogo",
                                            teamName: "KKR")
}
