//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mk on 2019/10/12.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI

struct LandmarkList<DetailView: View>: View {
    
    @EnvironmentObject var userData: UserData
    
    let detailViewProducer: (Landmark) -> DetailView
    
    var body: some View {
        
        List {
            
            Toggle(isOn: $userData.showFavoritesOnly) {
                
                Text("Show Favorites only")
            }
            
            ForEach(landmarkData) { landmark in
                
                if self.userData.showFavoritesOnly == false || landmark.isFavorite {
                    
                    NavigationLink(destination: self.detailViewProducer(landmark).environmentObject(self.userData)) {
                        
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle("Landmarks")
    }
}

#if os(watchOS)
typealias PreviewDetailView = WatchLandmarkDetail
#else
typealias PreviewDetailView = LandmarkDetail
#endif

struct LandmarkList_Previews: PreviewProvider {
    
    static var previews: some View {
        
        LandmarkList { PreviewDetailView(landmark: $0) }
            .environmentObject(UserData())
    }
}
