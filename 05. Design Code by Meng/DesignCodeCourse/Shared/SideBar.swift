//
//  SideBar.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/05/31.
//

import SwiftUI

struct SideBar: View {
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                NavigationLink(
                    destination: CoursesView(),
                    label: {
                        Label("Courses", systemImage: "book.closed")
                    })
                
                Label("Tutorials", systemImage: "list.bullet.rectangle")
                Label("Livestreams", systemImage: "tv")
                Label("Certificates", systemImage: "mail.stack")
                Label("Search", systemImage: "magnifyingglass")
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Learn")
        }
    }
}

struct SideBar_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SideBar()
    }
}
