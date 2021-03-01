//
//  ContentView_01_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/10/02.
//
// 25.1 List

import SwiftUI

struct ContentView_01_02: View {
	
	var body: some View {
		
		List {
			
			HStack {
				
				Image(systemName: "trash.circle.fill")
				Text("Take out the trash")
			}
			
			HStack {
				
				Image(systemName: "person.2.fill")
				Text("Pick up the kids")
			}
			
			HStack {
				
				Image(systemName: "car.fill")
				Text("Wash the car")
			}
		}
	}
}

struct ContentView_01_02_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_01_02()
	}
}
