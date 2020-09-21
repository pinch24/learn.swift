//
//  ContentView_11.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_11: View {
	
    var body: some View {
		
		Text("Hello, World.")
			.onAppear(perform: { print("On Appear") })
			.onDisappear(perform: { print("On Disappear") })
    }
}

struct ContentView_11_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_11()
    }
}
