//
//  ContentView_05_05.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_05_05: View {
	
	var body: some View {
		
		Text("Hello, World. How are you?")
			.font(.largeTitle)
			.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
			.border(Color.black, width: 5)
			.edgesIgnoringSafeArea(.all)
	}
}

struct ContentView_05_05_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_05_05()
	}
}
