//
//  File.swift
//  
//
//  Created by Nausheen Khan on 02/08/24.
//

import Foundation
import SwiftUI
import SINetworking

@MainActor
final class ScoresStripListingViewModel: ObservableObject {
    private let networkManager = SINetworkManager()
    private var matchesListingUrl: String?
    
    @Published var matchListingScoresData: [SIScoresStripMatchModel] = []
    
    init(url: String? = nil) {
        self.matchesListingUrl = url
    }
    
    func getMatchListingData() async {
        guard let matchesListingUrl else {return}
        let response = await networkManager.makeGetServiceRequest(url: matchesListingUrl,
                                                                    type: SIScoresStripListingModel.self)
        
        switch response {
        case .success(let returnedResponse):
            self.matchListingScoresData = returnedResponse.matches ?? []
        case .failure(let error):
            print("Returned Error:", error)
        }
    }
}
