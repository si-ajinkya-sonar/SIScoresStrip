//
//  File.swift
//  
//
//  Created by Nausheen Khan on 19/07/24.
//

import Foundation

struct SIScoresStripListingModel: Codable {
    let matches: [SIScoresStripMatchModel]?
}

struct SIScoresStripMatchModel: Codable {
    let eventName: String?
    let venueName: String?
    let participants: [SIScoresStripMatchParticipant]?
    let eventState: SIScoreStripMatchEventState?
    
    enum CodingKeys: String, CodingKey {
        case eventName = "event_name"
        case venueName = "venue_name"
        case eventState = "event_state"
        case participants
    }
    
    enum SIScoreStripMatchEventState: String, Codable {
        case live = "L"
        case result = "R"
        case upcoming = "U"
    }
}

// MARK: - Participant
struct SIScoresStripMatchParticipant: Codable {
    let name, nameEng, shortName, shortNameEng: String?
    let id, value, now: String?
    let highlight, firstup: String?

    enum CodingKeys: String, CodingKey {
        case name
        case nameEng = "name_eng"
        case shortName = "short_name"
        case shortNameEng = "short_name_eng"
        case id, value, now
        case highlight, firstup
    }
}
