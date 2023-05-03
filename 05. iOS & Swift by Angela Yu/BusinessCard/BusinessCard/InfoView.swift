//
//  InfoView.swift
//  BusinessCard
//
//  Created by mk on 2023/05/03.
//

import SwiftUI

struct InfoView: View {
	
	let text: String
	let imageName: String
	
	var body: some View {
		RoundedRectangle(cornerRadius: 25)
			.fill(Color.white)
			.frame(height: 50)
			.overlay(HStack {
				Image(systemName: imageName)
					.foregroundColor(.green)
				Text(text)
			})
			.padding(.all)
	}
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
		InfoView(text: "+82 010 123 4567", imageName: "phone.fill")
			.previewLayout(.sizeThatFits)
    }
}
