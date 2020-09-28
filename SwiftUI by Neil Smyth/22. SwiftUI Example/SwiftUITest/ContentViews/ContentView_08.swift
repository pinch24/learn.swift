//
//  ContentView_08.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 22.8 TextField

import SwiftUI

struct ContentView_08: View {
	
	@State private var rotation: Double = 0.0
	@State private var text: String = "Hello, World."
	
    var body: some View {
		
		VStack {
			
			Text(text)
				.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
				.fontWeight(.heavy)
				.foregroundColor(Color.gray)
				.rotationEffect(.degrees(rotation))
				.animation(.easeInOut(duration: 4))
			
			Slider(value: $rotation, in: 0 ... 360, step: 0.2)
			
			TextField("Enter text here", text: $text)
				.textFieldStyle(RoundedBorderTextFieldStyle())
		}
		.padding()
    }
}

struct ContentView_08_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_08()
    }
}
