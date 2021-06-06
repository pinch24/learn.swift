//
//  CourcesView.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/05/30.
//

import SwiftUI

struct CoursesView: View {
    
    @Namespace var namespace
    
    @State var show = false
    @State var selectedItem: Course? = nil
    @State var isDisabled = false
    
    var body: some View {
        
        ZStack {
            
            ScrollView {
                
                LazyVGrid(
                    columns: [GridItem(.adaptive(minimum: 160), spacing: 16)],
                    spacing: 16
                ) {
                    
                    ForEach(courses) { item in
                        
						VStack {
							
							CourseItem(course: item)
								.matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
								.frame(height: 200)
								.onTapGesture {
									withAnimation(.spring(), {
										show.toggle()
										selectedItem = item
										isDisabled = true
									})
								}
								.disabled(isDisabled)
						}
						.matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
                    }
                }
                .padding(16)
                .frame(maxWidth: .infinity)
            }
			.zIndex(1)
            
            if selectedItem != nil {
                
				ZStack(alignment: .topTrailing) {
                    
                    CourseDetail(course: selectedItem!, namespace: namespace)
					
					CloseButton()
						.padding(.trailing, 16)
						.onTapGesture {
							withAnimation(.spring(response: 0.4, dampingFraction: 0.8, blendDuration: 0), {
								show.toggle()
								selectedItem = nil
								DispatchQueue.main.asyncAfter(
									deadline: .now() + 0.4,
									execute: { isDisabled = false }
								)
							})
						}
				}
				.zIndex(2)
            }
        }
    }
}

struct CourcesView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CoursesView()
    }
}
