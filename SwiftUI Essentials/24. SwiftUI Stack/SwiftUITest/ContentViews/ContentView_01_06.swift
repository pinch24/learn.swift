//
//  ContentView_01_06.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/29.
//
// 24.1 Container Align - HStack

import SwiftUI

struct ContentView_01_06: View {
	
	var body: some View {
		
		HStack(alignment: .lastTextBaseline, spacing: 20) {
			
			Text("This is some text")
				.font(.largeTitle)
			
			Text("This is some longer text")
				.font(.body)
			
			Text("This is short")
				.font(.headline)
		}
	}
}

struct ContentView_01_06_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_01_06()
	}
}
