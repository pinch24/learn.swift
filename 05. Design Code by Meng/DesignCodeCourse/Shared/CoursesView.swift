//
//  CourcesView.swift
//  DesignCodeCourse
//
//  Created by Bob on 2021/05/30.
//

import SwiftUI

struct CoursesView: View {
    
    @State var show = false
    
    var body: some View {
        
        ZStack {
            
            CourseItem()
                .frame(width: 335, height: 250)
            
            VStack {
                
                if show == true {
                    
                    CourseItem()
                        .transition(.move(edge: .leading))
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
        .onTapGesture {
            
            withAnimation {
                
                show.toggle()
            }
        }
        //.animation(.spring())
    }
}

struct CourcesView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CoursesView()
    }
}
