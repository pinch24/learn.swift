//
//  CourcesView.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/05/30.
//

import SwiftUI

struct CoursesView: View {
    
	@ViewBuilder
    var body: some View {
        
		#if os(iOS)
		content
			.listStyle(InsetGroupedListStyle())
		#else
		content
			.frame(minWidth: 800, minHeight: 600)
		#endif
    }
	
	var content: some View {
		
		List(0 ..< 20) { item in
			
			CourseRow()
		}
		.navigationTitle("Courses")
	}
}

struct CourcesView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CoursesView()
    }
}
