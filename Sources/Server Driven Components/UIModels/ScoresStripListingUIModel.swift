//
//  ScoresStripListingUIModel.swift
//
//
//  Created by Nausheen Khan on 02/08/24.
//

import Foundation
import SwiftUI

public struct ScoresStripListingUIModel: Codable {
    public let fixturesUrl: String
    public let styles: ScoresStripListingUIModelStyles?
    public let childComponents: [ScoresStripListingUIModelChildComponents]?
    
    enum CodingKeys: CodingKey {
        case fixturesUrl
        case styles
        case childComponents
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fixturesUrl = try container.decode(String.self, forKey: .fixturesUrl)
        self.styles = try container.decodeIfPresent(ScoresStripListingUIModelStyles.self, forKey: .styles)
        self.childComponents = try container.decodeIfPresent([ScoresStripListingUIModelChildComponents].self, forKey: .childComponents)
    }
}

public struct ScoresStripListingUIModelStyles: Codable {
    let horizontalPadding: Double?
    let listStyle: String?
    
    public enum ScoresStripListStyle: String, Codable {
        case vertical
        case horizontal
    }
}

public struct ScoresStripListingUIModelChildComponents: Codable, Hashable {
    public static func == (lhs: ScoresStripListingUIModelChildComponents, rhs: ScoresStripListingUIModelChildComponents) -> Bool {
        return lhs.viewType == rhs.viewType
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(viewType)
    }
    
    let type: String?
    let viewType: ScoresStripViewType?
    let styles: ScoresStripListingUIModelChildStyles?
    
    public enum ScoresStripType: String, Codable {
        case typeOne
    }
    
    public enum ScoresStripViewType: String, Codable {
        case upcoming
        case live
        case result
    }
}

public struct ScoresStripListingUIModelChildStyles: Codable {
    let backgroundColor: String?
    let cornerRadius: Double?
}
