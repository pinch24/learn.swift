//
//  ContentView.swift
//  ContactCard
//
//  Created by mk on 2020/01/06.
//  Copyright © 2020 RoughGears. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("White Tiger")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5.0)
                    )
                
                Text("mk")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Interaction Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+82 10-2345-6789", imageName: "phone.fill")
                InfoView(text: "alpha@beta.com", imageName: "envelope.fill")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}
