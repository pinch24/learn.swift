//
//  RoomList.swift
//  Rooms
//
//  Created by mk on 2019/09/18.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI

struct RoomList: View {
    
    @ObservedObject var store = RoomStore()
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                Section {

                    Button(action: addRoom) {

                        Text("Add Room")
                    }
                }
                
                Section {
                    
                    ForEach(store.rooms) { room in
                        
                        RoomCell(room: room)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            .navigationBarTitle(Text("Rooms"))
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func addRoom() {
        
        store.rooms.append(Room(name: "william-of-ockham-2", capacity: 2000))
    }
    
    func delete(at offset: IndexSet) {
        
        store.rooms.remove(atOffsets: offset)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        
        store.rooms.move(fromOffsets: source, toOffset: destination)
    }
}

struct RoomCell: View {
    
    let room: Room
    
    var body: some View {
        
        NavigationLink(destination: RoomDetail(room: room)) {
            
            Image(room.thumbnailName)
                .frame(width: 44, height: 44, alignment: .center)
                .cornerRadius(8.0)
            
            VStack(alignment: .leading) {
                
                Text(room.name)
                Text("\(room.capacity) likes")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            
            RoomList(store: RoomStore(rooms: testData))
            
            RoomList(store: RoomStore(rooms: testData))
                .environment(\.sizeCategory, .extraExtraLarge)
            
            RoomList(store: RoomStore(rooms: testData))
                .environment(\.colorScheme, .dark)
            
            RoomList(store: RoomStore(rooms: testData))
                .environment(\.layoutDirection, .rightToLeft)
                .environment(\.locale, Locale(identifier: "ar"))
        }
    }
}
#endif
