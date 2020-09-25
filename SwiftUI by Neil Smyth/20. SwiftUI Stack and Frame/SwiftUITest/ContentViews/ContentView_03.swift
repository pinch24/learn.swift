//
//  ContentView_03.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/24.
//

import SwiftUI

struct ContentView_03: View {
	
	var body: some View {
		
		VStack {
			
			Group {
				
				Text("One")
				Text("Two")
				Text("Three")
				Text("Four")
				Text("Five")
				Text("Six")
				Text("Seven")
				Text("Eight")
			}
			
			Group {
				
				Text("Nine")
				Text("Ten")
				Text("Eleven")
				Text("Twelve")
				Text("Thirteen")
				Text("Fourteen")
				Text("Fifteen")
				Text("Sixteen")
			}
		}
	}
}

struct ContentView_03_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_03()
	}
}
