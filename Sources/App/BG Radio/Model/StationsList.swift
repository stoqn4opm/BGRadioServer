//
//  StationsList.swift
//  App
//
//  Created by Stoyan Stoyanov on 01/06/2019.
//

import Foundation

struct Stations {
    private init() {}
    
    static var all: [Response.Station] {
        
        let station1 = Response.Station(id: 1,
                                        thumbnailURL: "https://i.ibb.co/zGHj4NX/bg-radio.png",
                                        streamURL: "http://149.13.0.80/bgradio128.m3u",
                                        name: "БГ Радио",
                                        stationDescription: "Само българска музика!",
                                        websiteURL: "https://www.bgradio.bg/")
        
        let station2 = Response.Station(id: 2,
                                        thumbnailURL: "https://i.ibb.co/5sMMR22/power-fm.png",
                                        streamURL: "http://a1.virtualradio.eu:8000/powerfm.mp3.m3u",
                                        name: "Power FM",
                                        stationDescription: "Хитове и Ретро!",
                                        websiteURL: "https://www.powerfm.bg/")
        
        let station3 = Response.Station(id: 3,
                                        thumbnailURL: "https://i.ibb.co/ggY2Zjn/njoy.jpg",
                                        streamURL: "http://live.btvradio.bg/njoy.mp3.m3u",
                                        name: "Radio NJOY",
                                        stationDescription: "13 Години Само Хитове",
                                        websiteURL: "http://www.njoy.bg")
        
        let station4 = Response.Station(id: 4,
                                        thumbnailURL: "https://i.ibb.co/x7wHcnd/nova.png",
                                        streamURL: "http://149.13.0.80/nova128.m3u",
                                        name: "Radio Nova",
                                        stationDescription: "Just Listen",
                                        websiteURL: "https://www.radionova.bg")
        
        let station5 = Response.Station(id: 5,
                                        thumbnailURL: "https://i.ibb.co/rky21T1/city.jpg",
                                        streamURL: "http://149.13.0.80/city64.m3u",
                                        name: "Radio City",
                                        stationDescription: "Хитове до скъсване!",
                                        websiteURL: "https://www.city.bg")
        
        let station6 = Response.Station(id: 6,
                                        thumbnailURL: "https://i.ibb.co/72RDVLh/radio1.png",
                                        streamURL: "http://149.13.0.80/radio1128.m3u",
                                        name: "Радио 1",
                                        stationDescription: "Класическите Хитове!",
                                        websiteURL: "https://www.radio1.bg")
        
        let station7 = Response.Station(id: 7,
                                        thumbnailURL: "https://i.ibb.co/gzzyqkH/radio1-rock.png",
                                        streamURL: "http://149.13.0.80/radio1rock64.m3u",
                                        name: "Радио 1 - Рок",
                                        stationDescription: "Едно рок радио!",
                                        websiteURL: "http://www.radio1rock.bg")
        
        let station8 = Response.Station(id: 8,
                                        thumbnailURL: "https://i.ibb.co/4pGwd02/nrj.png",
                                        streamURL: "http://149.13.0.80/nrj128.m3u",
                                        name: "Radio NRJ",
                                        stationDescription: "Hit Music Only!",
                                        websiteURL: "http://www.radioenergy.bg")
        
        return [station1, station2, station3, station4, station5, station6, station7, station8]
    }
}
