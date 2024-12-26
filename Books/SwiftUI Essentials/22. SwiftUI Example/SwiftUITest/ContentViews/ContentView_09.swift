//
//  ContentView_09.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 22.9 Picker

import SwiftUI

struct ContentView_09: View {
	
	var colors: [Color] = [.black, .red, .green, .blue]
	var colorNames: [String] = ["Black", "Red", "Green", "Blue"]
	
	@State private var colorIndex = 0
	@State private var rotation: Double = 0.0
	@State private var text: String = "Hello, World."
	
    var body: some View {
		
		VStack {
			
			Text(text)
				.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
				.fontWeight(.heavy)
				.foregroundColor(colors[colorIndex])
				.rotationEffect(.degrees(rotation))
				.animation(.easeInOut(duration: 4))
			
			Slider(value: $rotation, in: 0 ... 360, step: 0.2)
			
			TextField("Enter text here", text: $text)
				.textFieldStyle(RoundedBorderTextFieldStyle())
			
			Picker(selection: $colorIndex, label: Text("Color")) {
				
				ForEach (0 ..< colorNames.count) {
					
					Text(colorNames[$0])
						.foregroundColor(colors[$0])
				}
			}
		}
		.padding()
    }
}

struct ContentView_09_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_09()
    }
}
