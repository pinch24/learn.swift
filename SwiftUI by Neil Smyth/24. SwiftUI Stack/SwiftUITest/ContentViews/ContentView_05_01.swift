//
//  ContentView_05_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/29.
//
// 24.5 Stack Alignment

import SwiftUI

struct ContentView_05_01: View {
	
	var body: some View {
		
		HStack(alignment: .center, spacing: 20) {
			
			Circle()
				.foregroundColor(Color.purple)
				.frame(width: 100, height: 100)
			
			VStack(alignment: .center) {
				
				Rectangle()
					.foregroundColor(Color.red)
					.frame(width: 100, height: 100)
				
				Rectangle()
					.foregroundColor(Color.green)
					.frame(width: 100, height: 100)
				
				Rectangle()
					.foregroundColor(Color.blue)
					.frame(width: 100, height: 100)
				
				Rectangle()
					.foregroundColor(Color.yellow)
					.frame(width: 100, height: 100)
			}
		}
	}
}

struct ContentView_05_01_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_05_01()
	}
}
