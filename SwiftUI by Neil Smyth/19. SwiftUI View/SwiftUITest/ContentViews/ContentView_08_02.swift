//
//  ContentView_08_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_08_02: View {
	
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
				.padding()
				.border(Color.gray)
		}
	}
}

struct ContentView_08_02_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_08_02()
	}
}
