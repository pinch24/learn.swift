//
//  ContentView_05_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_05_02: View {
	
	let hello = Text("Hello.")
		.foregroundColor(.black)
		.bold()
	
	let goodbye = Text("Good Bye!")
		.foregroundColor(.gray)
	
    var body: some View {
		
		VStack {
			
			hello
			
			goodbye
		}
    }
}

struct ContentView_05_02_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_05_02()
    }
}
