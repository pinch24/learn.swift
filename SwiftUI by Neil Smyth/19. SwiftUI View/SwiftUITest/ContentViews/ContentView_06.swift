//
//  ContentView_06.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_06: View {
	
    var body: some View {
		
		VStack {
			
			Text("Hello.")
				.foregroundColor(.primary)
				.font(.largeTitle)
				.bold()
			
			
			Text("Good Bye!")
				.foregroundColor(.secondary)
		}
    }
}

struct ContentView_06_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_06()
    }
}
