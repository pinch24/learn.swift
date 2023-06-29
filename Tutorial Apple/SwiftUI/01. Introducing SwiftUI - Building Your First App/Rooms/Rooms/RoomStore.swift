//
//  RoomStore.swift
//  Rooms
//
//  Created by mk on 2019/10/10.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    
    @Published var rooms: [Room] {
        
        didSet { didChange.send() }
    }
    
    init(rooms: [Room] = []) {
        
        self.rooms = rooms
    }
    
    var didChange = PassthroughSubject<Void, Never>()
}
