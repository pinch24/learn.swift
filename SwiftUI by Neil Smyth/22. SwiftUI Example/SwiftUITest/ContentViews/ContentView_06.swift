//
//  ContentView_06.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 22.6 View Modifier

import SwiftUI

struct ContentView_06: View {
	
	@State private var rotation: Double = 0.0
	
    var body: some View {
		
		VStack {
			
			Text("Hello, World.")
				.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
				.fontWeight(.heavy)
				.foregroundColor(Color.gray)
			
			Slider(value: $rotation, in: 0 ... 360, step: 0.1)
		}
		.padding()
    }
}

struct ContentView_06_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_06()
    }
}
