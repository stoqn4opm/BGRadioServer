//
//  StationController.swift
//  App
//
//  Created by Stoyan Stoyanov on 28/05/2019.
//

import Vapor

// MARK: - Class Definition

final class StationController {
    
    static func setupRoutes(_ router: Router) {
        
        // Basic "Hello, world!" example
        router.get("getStations") { req in
            
            return DummyResponse
        }
    }
}

