//
//  ContentView_07.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 22.7 View Rotation and Animation

import SwiftUI

struct ContentView_07: View {
	
	@State private var rotation: Double = 0.0
	
    var body: some View {
		
		VStack {
			
			Text("Hello, World.")
				.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
				.fontWeight(.heavy)
				.foregroundColor(Color.gray)
				.rotationEffect(.degrees(rotation))
				.animation(.easeInOut(duration: 4))
			
			Slider(value: $rotation, in: 0 ... 360, step: 0.2)
		}
		.padding()
    }
}

struct ContentView_07_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_07()
    }
}
