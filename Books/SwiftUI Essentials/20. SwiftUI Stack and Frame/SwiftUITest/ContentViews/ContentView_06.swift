//
//  ContentView_06.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_06: View {
	
	var body: some View {
		
		GeometryReader { geometry in
			
			VStack {
				
				Text("Hello, World. How are you?")
					.font(.largeTitle)
					.frame(width: geometry.size.width / 2, height: (geometry.size.height / 4) * 3)
				
				Text("Good Bye!")
					.font(.largeTitle)
					.frame(width: geometry.size.width / 3, height: geometry.size.height / 4)
			}
		}
	}
}

struct ContentView_06_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_06()
	}
}
