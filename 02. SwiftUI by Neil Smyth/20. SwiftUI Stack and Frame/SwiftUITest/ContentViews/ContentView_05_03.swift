//
//  ContentView_05_03.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_05_03: View {
	
	var body: some View {
		
		Text("Hello, World. How are you?")
			.font(.largeTitle)
			.border(Color.black)
			.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
	}
}

struct ContentView_05_03_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_05_03()
	}
}
