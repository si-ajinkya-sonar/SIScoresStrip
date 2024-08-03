//
//  File.swift
//  
//
//  Created by Nausheen Khan on 02/08/24.
//

import Foundation
import SwiftUI

public protocol UIComponent {
    var uniqueId: String {get}
    func render() -> AnyView
}
