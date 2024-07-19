//
//  File.swift
//  
//
//  Created by Nausheen Khan on 19/07/24.
//

import SwiftUI
import SINetworking

final class SIScoresStripViewModel: ObservableObject {
    private let networkManager = SINetworkManager()
    
    func getMatchListingData() async {
        let matchesListingUrl = "https://www.knightclub.in/default.aspx?methodtype=3&client=4737564702&sport=1&league=0&timezone=0530&language=&tournament=4723"
        let response = await networkManager.makeGetServiceRequest(url: matchesListingUrl,
                                                                    type: SIScoresStripListingModel.self)
        
        switch response {
        case .success(let returnedResponse):
            print("Returned Response:", returnedResponse)
        case .failure(let error):
            print("Returned Error:", error)
        }
    }
}
