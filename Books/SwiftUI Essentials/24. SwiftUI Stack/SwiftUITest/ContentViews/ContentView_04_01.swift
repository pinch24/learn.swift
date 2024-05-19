//
//  ContentView_04_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/29.
//
// 24.4 Custom Alignment Type

import SwiftUI

struct ContentView_04_01: View {
	
	var body: some View {
		
		HStack(alignment: .center) {
			
			Rectangle()
				.foregroundColor(Color.red)
				.frame(width: 40, height: 200)
			
			Rectangle()
				.foregroundColor(Color.green)
				.frame(width: 40, height: 200)
			
			Rectangle()
				.foregroundColor(Color.blue)
				.frame(width: 40, height: 200)
			
			Rectangle()
				.foregroundColor(Color.yellow)
				.frame(width: 40, height: 200)
		}
	}
}

struct ContentView_04_01_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_04_01()
	}
}
