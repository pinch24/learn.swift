//
//  ContentView_12.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct CustomVStack<Content: View>: View {
	
	let content: () -> Content
	init(@ViewBuilder content: @escaping () -> Content) {
		
		self.content = content
	}
	
	var body: some View {
		
		VStack(spacing: 20) {
			
			content()
		}
		.font(.largeTitle)
	}
}

struct ContentView_12: View {
	
    var body: some View {
		
		CustomVStack {
			
			Text("Hello, World.")
			Text("Good Bye!")
		}
    }
}

struct ContentView_12_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_12()
    }
}
