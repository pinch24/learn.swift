//
//  CourcesView.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/05/30.
//

import SwiftUI

struct CourcesView: View {
    
    var body: some View {
        
        List(0 ..< 20) { item in
            
            CourseRow()
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct CourcesView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CourcesView()
    }
}
