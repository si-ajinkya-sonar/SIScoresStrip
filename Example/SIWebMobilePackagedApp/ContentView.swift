//
//  ContentView.swift
//  SIWebMobilePackagedApp
//
//  Created by Nausheen Khan on 04/07/24.
//

import SwiftUI
import SIScoresStrip

struct ContentView: View {
    var body: some View {
        VStack {
            ScoreStripBasic(backgroundColor: .blue,
                         cardCornerRadius: 10,
                            statusIndicatorColor: .green, isActionButtonHidden: true, actionButtonBackgroundColor: .purple, actionButtonForegroundColor: .white)
        }
    }
}

#Preview {
    ContentView()
}
