//
//  RoomDetail.swift
//  Rooms
//
//  Created by mk on 2019/10/10.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI

struct RoomDetail: View {
    
    let room: Room
    
    @State private var zoomed = false
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Image(room.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill: .fit)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.4)) { self.zoomed.toggle() }
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .navigationBarTitle(Text(room.name), displayMode: .inline)
            
            if room.hasVideo && !zoomed {
                
                Image(systemName: "video.fill")
                    .font(.title)
                    .padding(.all)
                    .transition(.move(edge: .leading))
            }
        }
    }
}

#if DEBUG
struct RoomDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            
            NavigationView { RoomDetail(room: testData[0]) }
            NavigationView { RoomDetail(room: testData[1]) }
        }
    }
}
#endif
