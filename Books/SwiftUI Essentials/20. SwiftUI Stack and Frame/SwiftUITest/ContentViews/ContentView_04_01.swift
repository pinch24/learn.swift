//
//  ContentView_04_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_04_01: View {
	
	var body: some View {
		
		HStack {
			
			Image(systemName: "airplane")
			Text("Flight Times: ")
			Text("London Heathrow")
		}
	}
}

struct ContentView_04_01_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_04_01()
	}
}
