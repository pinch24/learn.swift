//
//  ContentView_05_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_05_02: View {
	
	var body: some View {
		
		Text("Hello, World.")
			.font(.largeTitle)
			.border(Color.black)
			.frame(minWidth: 100, maxWidth: 300, minHeight: 100, maxHeight: 100, alignment: .center)
	}
}

struct ContentView_05_02_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_05_02()
	}
}
