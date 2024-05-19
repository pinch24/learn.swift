//
//  ContentView_01_03.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/29.
//
// 24.1 Container Align - VStack

import SwiftUI

struct ContentView_01_03: View {
	
	var body: some View {
		
		VStack(alignment: .trailing) {
			
			Text("This is some text")
			Text("This is some longer text")
			Text("This is short")
		}
	}
}

struct ContentView_01_03_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_01_03()
	}
}
