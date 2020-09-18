//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by mk on 2019/10/22.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}
