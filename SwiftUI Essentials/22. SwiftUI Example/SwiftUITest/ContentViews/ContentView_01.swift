//
//  ContentView_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 22.5 Slider

import SwiftUI

struct ContentView_05: View {
	
	@State private var rotation: Double = 0.0
	
    var body: some View {
		
		VStack {
			
			Text("Hello, World.")
			
			Slider(value: $rotation, in: 0 ... 360, step: 0.1)
		}
		.padding()
    }
}

struct ContentView_01_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_05()
    }
}
