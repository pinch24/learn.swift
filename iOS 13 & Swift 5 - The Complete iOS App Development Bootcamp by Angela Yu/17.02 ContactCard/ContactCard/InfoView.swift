//
//  InfoView.swift
//  ContactCard
//
//  Created by mk on 2020/01/06.
//  Copyright © 2020 RoughGears. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 18.0)
            .fill(Color.white)
            .frame(height: 48)
            .overlay(
                
                HStack {
                    
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    
                    Text(text)
                        .foregroundColor(.black)
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        InfoView(text: "+00 11-2222-3333", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
