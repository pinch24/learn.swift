//
//  ContentView_10_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_10_02: View {
	
    var body: some View {
		
		Button(action: { print("Good, Bye!") }) {
			
			Text("Click Me")
		}
    }
}

struct ContentView_10_02_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_10_02()
    }
}
