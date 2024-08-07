//
//  File.swift
//  
//
//  Created by Nausheen Khan on 19/07/24.
//

import SwiftUI
import SIBoilerPlate

final class SIScoresStripViewModel: ObservableObject {
    private let networkManager = SINetworkManager()
    private var matchesListingUrl: String?
    
    init(url: String? = nil) {
        self.matchesListingUrl = url
    }
    
    func getMatchListingData() async {
        guard let matchesListingUrl else {return}
        let response = await networkManager.createGetRequest(url: matchesListingUrl,
                                                                    type: SIScoresStripListingModel.self)
        
        switch response {
        case .success(let returnedResponse):
            print("Returned Response:", returnedResponse)
        case .failure(let error):
            print("Returned Error:", error)
        }
    }
}
