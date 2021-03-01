//
//  ContentView_04_04.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_04_04: View {
	
	var body: some View {
		
		HStack {
			
			Image(systemName: "airplane")
			Text("Flight Times: ")
			Text("London Heathrow")
				.layoutPriority(1)
		}
		.font(.largeTitle)
		.lineLimit(1)
	}
}

struct ContentView_04_04_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_04_04()
	}
}
