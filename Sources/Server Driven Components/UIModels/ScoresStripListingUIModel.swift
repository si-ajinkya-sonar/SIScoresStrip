//
//  ScoresStripListingUIModel.swift
//
//
//  Created by Nausheen Khan on 02/08/24.
//

import Foundation
import SwiftUI
import SINetworking

public struct ScoresStripListingUIModel: Codable {
    public let fixturesUrl: String
    
    public init(fixturesUrl: String) {
        self.fixturesUrl = fixturesUrl
    }
}
