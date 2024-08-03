//
//  ScreenModel.swift
//  ServerSideSwiftUI
//
//  Created by Nausheen Khan on 01/08/24.
//

import Foundation

public enum ComponentError: Error {
    case decodingError
}

public enum ComponentType: String, Decodable {
    case scorestrip
}

public struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String:Any]
    
    private enum CodingKeys: CodingKey {
        case type
        case data
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(ComponentType.self, forKey: .type)
        self.data = try container.decode(JSON.self, forKey: .data).value as! [String:Any]
    }
}

public struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    public func buildComponents() throws -> [UIComponent] {
        var components: [UIComponent] = []
        
        for component in self.components {
            switch component.type {
            case .scorestrip:
                guard let uiModel: ScoresStripListingUIModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                components.append(ScoresStripListingComponentWrapper(uiModel: uiModel))
            }
        }
        
        return components
    }
}
