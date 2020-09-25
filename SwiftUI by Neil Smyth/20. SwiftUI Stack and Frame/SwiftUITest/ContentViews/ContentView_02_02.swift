//
//  ContentView_02_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_02_02: View {
	
	var body: some View {
		
		VStack(spacing: 20) {
			
			Text("Financial Results")
				.font(.title)
			
			HStack(alignment: .top) {
				
				Text("Q1 Sales")
					.font(.headline)
				
				Spacer()
				
				VStack(alignment: .leading) {
					
					Text("January")
					Text("February")
					Text("March")
				}
				
				Spacer()
				
				VStack(alignment: .leading) {
					
					Text("$1,000")
					Text("$200")
					Text("$3,000")
				}
				.padding(5)
			}
			.padding(5)
		}
		.padding(5)
	}
}

struct ContentView_02_02_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_02_02()
	}
}
