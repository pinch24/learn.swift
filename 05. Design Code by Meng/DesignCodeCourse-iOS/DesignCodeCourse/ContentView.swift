//
//  ContentView.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/05/30.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 4.0) {
            
            Image("Illustration 1")
            
            Text("SwiftUI for iOS 14")
                .fontWeight(.regular)
            
            Text("20 Sections")
                .font(.footnote)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}
