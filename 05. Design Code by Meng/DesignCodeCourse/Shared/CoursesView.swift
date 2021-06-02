//
//  CourcesView.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/05/30.
//

import SwiftUI

struct CoursesView: View {
    
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        
        ZStack {
            
            CourseItem()
                .matchedGeometryEffect(id: "Card", in: namespace, isSource: !show)
                .frame(width: 335, height: 250)
            
            if show == true {
                
                ScrollView {
                    
                    CourseItem()
                        .matchedGeometryEffect(id: "Card", in: namespace)
                        .frame(height: 300)
                        .transition(.opacity)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        ForEach(0 ..< 20) { item in
                            CourseRow()
                        }
                    }
                    .padding()
                }
                .transition(.opacity)
                .edgesIgnoringSafeArea(.all)
            }
        }
        .onTapGesture {
            
            withAnimation(.spring(), {
                
                show.toggle()
            })
            
        }
        //.animation(.spring())
    }
}

struct CourcesView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CoursesView()
    }
}
