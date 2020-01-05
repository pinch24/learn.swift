//
//  Room.swift
//  Rooms
//
//  Created by mk on 2019/10/10.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI

struct Room : Identifiable {
    
    var id: UUID {
        return UUID()
    }
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + " - Thumb" }
}

let testData = [
    
    Room(name: "Atelier Escha & Logy", capacity: 6, hasVideo: true),
    Room(name: "Atelier Sophy", capacity: 8, hasVideo: false),
    Room(name: "Bakemonogatary", capacity: 16, hasVideo: true),
    Room(name: "JungleBook", capacity: 10, hasVideo: true),
    Room(name: "Killy_02", capacity: 12, hasVideo: false),
    Room(name: "killy-blame-01", capacity: 8, hasVideo: false),
    Room(name: "killy-blame-02", capacity: 10, hasVideo: true),
    Room(name: "TheArtOfHearingHeartbeats", capacity: 7, hasVideo: false),
    Room(name: "White Tiger", capacity: 1, hasVideo: false)
]
