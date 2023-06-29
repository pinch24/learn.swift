//
//  ContentView_08_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_08_01: View {
	
	var body: some View {
		
		VStack {
			
			Text("Hello.")
				.foregroundColor(.primary)
				.font(.largeTitle)
				.bold()
				.border(Color.gray)
				.padding()
			
			Text("Good Bye!")
				.foregroundColor(.secondary)
				.border(Color.gray)
				.padding()
		}
	}
}

struct ContentView_08_01_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_08_01()
	}
}
