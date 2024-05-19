//
//  ContentView_10_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_10_01: View {
	
    var body: some View {
		
		Button(action: buttonPressed) {
			
			Text("Click Me")
		}
    }
	
	func buttonPressed() {
		
		print("Hello, World.")
	}
}

struct ContentView_10_01_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_10_01()
    }
}
