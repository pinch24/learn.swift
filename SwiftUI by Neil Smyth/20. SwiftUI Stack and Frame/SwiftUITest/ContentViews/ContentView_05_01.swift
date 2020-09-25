//
//  ContentView_05_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_05_01: View {
	
	var body: some View {
		
		Text("Hello, World.")
			.font(.largeTitle)
			.border(Color.black)
			.frame(width: 100, height: 100, alignment: .center)
	}
}

struct ContentView_05_01_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_05_01()
	}
}
