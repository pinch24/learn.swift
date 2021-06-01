//
//  CourseRow.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/05/30.
//

import SwiftUI

struct CourseRow: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "paperplane.circle.fill")
                .renderingMode(.template)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.medium)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            
            
            VStack(alignment: .leading) {
                
                Text("SwiftUI")
                    .font(.subheadline)
                    .bold()
                
                Text("Description")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
    }
}

struct CourseRow_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CourseRow()
    }
}
