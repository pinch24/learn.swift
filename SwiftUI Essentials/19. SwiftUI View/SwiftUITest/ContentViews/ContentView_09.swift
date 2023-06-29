//
//  ContentView_09.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct CustomViewModifier: ViewModifier {
	
	func body(content: Content) -> some View {
		
		content
			.background(Color.secondary)
			.foregroundColor(.primary)
			.font(.largeTitle)
			.border(Color.gray, width: 0.2)
	}
}

struct ContentView_09: View {
	
    var body: some View {
		
		VStack {
			
			Text("Hello.")
				.bold()
				.padding()
				.modifier(CustomViewModifier())
			
			
			Text("Good Bye!")
				.modifier(CustomViewModifier())
				.padding()
				.font(.headline)	// bug. not apply
				//.bold()			// error. no member
		}
    }
}

struct ContentView_09_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_09()
    }
}
