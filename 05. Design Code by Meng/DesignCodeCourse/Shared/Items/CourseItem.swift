//
//  CourseItem.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/06/01.
//

import SwiftUI

struct CourseItem: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 4.0) {
                    
            Spacer()
            
            HStack {
                
                Spacer()
                
                Image("Illustration 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
            }
            
            Text("SwiftUI for iOS 14")
                .fontWeight(.bold)
            
            Text("20 Sections")
                .font(.footnote)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(Color.blue)
        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CourseItem_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CourseItem()
    }
}
