//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 04/07/24.
//

import SwiftUI

public struct ScoreStripBasic: View {
    
    public init() {}
    
    public var body: some View {
        VStack {
            Text("Ireland Provincial ODI Cup 2nd Match")
                .padding(.all, 10)
                .background(Color.red)
                .cornerRadius(8, corners: [.topLeft, .topRight])
            VStack {
                basicScoreStripHeaderView
                
                Text("KKR")
                    .font(.headline)
            }
        }
        .padding()
    }
    
    private var basicScoreStripHeaderView: some View {
        HStack {
            Text("Match 17, 21 May 2023")
            Spacer()
            Text("Upcoming")
                .padding(.all, 5)
                .background(Color.orange)
                .clipShape(.rect(cornerRadius: 8))
        }
    }
}

#Preview {
    ScoreStripBasic()
}
