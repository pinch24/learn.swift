//
//  ContentView_05_04.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_05_04: View {
	
	var body: some View {
		
		Text("Hello, World. How are you?")
			.font(.largeTitle)
			.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
			.border(Color.black, width: 5)
	}
}

struct ContentView_05_04_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_05_04()
	}
}
