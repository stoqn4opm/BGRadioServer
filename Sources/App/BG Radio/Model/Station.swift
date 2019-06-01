//
//  Station.swift
//  App
//
//  Created by Stoyan Stoyanov on 28/05/2019.
//

import Foundation

// MARK: - Station

/// Container holding the server response for `BGRadioKit.Server.Fetch` api call.
struct Response: Codable {
    
    /// List of all currently broadcasted stations.
    let stations: [Station]
    
    enum CodingKeys: String, CodingKey {
        case stations = "stations"
    }
}

// MARK: - Station Submodel

extension Response {
    
    /// Class That represents a raw radio station data model, as returned from the server
    struct Station: Codable {
        
        /// Unique identifier of this radio station.
        let id: Int
        
        /// Thumbnail image url of the radio station.
        let thumbnailURL: String
        
        /// The url to the audio stream of this station.
        let streamURL: String
        
        /// The name of the radio station.
        let name: String
        
        /// Short description of the radio station.
        let stationDescription: String
        
        /// URL to the official website of the radio.
        let websiteURL: String
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case thumbnailURL = "thumbnail_url"
            case streamURL = "stream_url"
            case name = "name"
            case stationDescription = "description"
            case websiteURL = "website_url"
        }
    }
}
