//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 13/07/24.
//

import SwiftUI

public struct SIScoresStripTypeOneVerticalListView: View {
    private let scoresStripTypeOneModel: SIScoresStripTypeOneModel
    
    public init(scoresStripTypeOneModel: SIScoresStripTypeOneModel) {
        self.scoresStripTypeOneModel = scoresStripTypeOneModel
    }
    
    public var body: some View {
        List {
            ForEach(0..<5) { _ in
                SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: scoresStripTypeOneModel)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    SIScoresStripTypeOneVerticalListView(scoresStripTypeOneModel: SIScoresStripTypeOneModel())
}
