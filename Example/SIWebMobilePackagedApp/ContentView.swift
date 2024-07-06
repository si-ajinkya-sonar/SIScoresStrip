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
            ScoreStripBasic(scoresStripBasicModel: ScoresStripBasicModel(backgroundColor: .yellow, scoresStripTitleBackgroundColor: .orange))
        }
    }
}

#Preview {
    ContentView()
}
