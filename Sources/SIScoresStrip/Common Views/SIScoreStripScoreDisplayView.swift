//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 17/07/24.
//

import SwiftUI

struct SIScoreStripScoreDisplayView: View {
    let scoresArr: [String]
    var body: some View {
        VStack {
            ForEach(scoresArr, id: \.self) { value in
                Text(value)
            }
        }
    }
}

#Preview {
    SIScoreStripScoreDisplayView(scoresArr: ["Yet To Bat"])
}
