//
//  ContentView.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/09.
//  Copyright © 2020 mk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
    var body: some View {
		
		VStack {
			
			Text("Hello, World!")
				.foregroundColor(.gray)
				.font(.largeTitle)
				.bold()
				
			
			Text("Good Bye!")
				.foregroundColor(.secondary)
				.font(.custom("Copperplate", size: 32))
				.border(Color.yellow)
				.padding()
		}
    }
}


struct ContentView_Previews: PreviewProvider {
	
	static var previews: some View {
		
		Group {
			
			ContentView()
				.previewDevice(PreviewDevice(rawValue: "iPhone SE"))
				.previewDisplayName("iPhone SE")
				.environment(\.colorScheme, .dark)
			
//			ContentView()
//				.previewDevice(PreviewDevice(rawValue: "iPhone 11"))
//				.previewDisplayName("iPhone 11")
		}
	}
}
