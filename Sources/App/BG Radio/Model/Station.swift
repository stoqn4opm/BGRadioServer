//
//  Station.swift
//  App
//
//  Created by Stoyan Stoyanov on 28/05/2019.
//

import Foundation

// MARK: - Station

struct Station: Codable {
    
    let id: Int
    let thumbnailURL: String
    let streamURL: String
    let name: String
    let stationDescription: String
    let websiteURL: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case thumbnailURL = "thumbnail_url"
        case streamURL = "stream_url"
        case name
        case stationDescription = "description"
        case websiteURL = "website_url"
    }
}
