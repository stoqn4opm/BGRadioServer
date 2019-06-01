//
//  StationController.swift
//  App
//
//  Created by Stoyan Stoyanov on 28/05/2019.
//

import Vapor

// MARK: - Class Definition

final class StationController {

    private static let basicAuthKey = "Basic IFVYDKv5GnfVaCz39k3PKWc5lLmjNL7S6DmfaNpech3fsg0li50zSd75z2IdLz6ERU3bRa9ocIuQiSu9Uim8NEnCEu7d89LhtN0J"
    
    static func setupRoutes(_ router: Router) {
        
        router.get("getStations") { req -> String in
            let auth = req.http.headers.firstValue(name: HTTPHeaderName("Authorization"))
            guard auth == StationController.basicAuthKey else { throw Abort(.unauthorized) }
            
            let response = Response(stations: Stations.all)
            let result = try JSONEncoder().encode(response)
            
            return String(data: result, encoding: .utf8) ?? ""
        }
    }
}
