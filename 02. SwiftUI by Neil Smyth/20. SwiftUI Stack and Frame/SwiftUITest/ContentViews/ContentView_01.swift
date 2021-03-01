//
//  ContentView_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_01: View {
	
    var body: some View {
		
		VStack {
			
			Text("Financial Results")
				.font(.title)
			
			HStack {
				
				Text("Q1 Sales")
					.font(.headline)
				
				VStack {
					
					Text("January")
					Text("February")
					Text("March")
				}
				
				VStack {
					
					Text("$1,000")
					Text("$200")
					Text("$3,000")
				}
			}
		}
    }
}

struct ContentView_01_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_01()
    }
}
