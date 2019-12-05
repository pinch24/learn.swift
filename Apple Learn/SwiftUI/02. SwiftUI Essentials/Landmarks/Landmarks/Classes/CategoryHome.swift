//
//  CategoryHome.swift
//  Landmarks
//
//  Created by mk on 2019/10/21.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String: [Landmark]] {
        
        .init(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var featured: [Landmark] {
        
        landmarkData.filter { $0.isFeatured }
    }
    
    @State var showingProfile = false
    @EnvironmentObject var userData: UserData
    
    var profileButton: some View {
        
        Button(action: { self.showingProfile.toggle() }) {
            
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                //FeaturedLandmarks(landmarks: featured)
                FeaturedLandmarks(featured.map { FeatureCard(landmark: $0) })
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
                NavigationLink(destination: LandmarkList { LandmarkDetail(landmark: $0) }) { Text("See All") }
            }
            .navigationBarTitle(Text("Featured"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(self.userData)
            }
        }
    }
}

struct FeaturedLandmarks<Page: View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views: [Page]) {
        
        viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    //var landmarks: [Landmark]
    
    var body: some View {
        
        //landmarks[0].image.resizable()
        
        ZStack(alignment: .bottomTrailing) {
            
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
                .offset(y: -44)
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CategoryHome()
    }
}
