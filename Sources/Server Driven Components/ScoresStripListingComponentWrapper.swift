//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 03/08/24.
//

import SwiftUI

struct ScoresStripListingComponentWrapper: View, UIComponent {
    
    var uniqueId: String {
        return ComponentType.scorestrip.rawValue
    }
    
    func render() -> AnyView {
        return AnyView(self)
    }
    
    let uiModel: ScoresStripListingUIModel

    var body: some View {
        ScoresStripListingComponentView(uiModel: uiModel)
    }
}
