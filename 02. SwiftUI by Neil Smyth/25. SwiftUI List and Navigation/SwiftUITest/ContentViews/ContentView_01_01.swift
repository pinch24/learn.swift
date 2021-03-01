//
//  ContentView_01_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/10/02.
//
// 25.1 List

import SwiftUI

struct ContentView_01_01: View {
	
	var body: some View {
		
		List {
			
			Text("Wash the car")
			Text("Vaccum house")
			Text("Pick up kids from school bus at 3pm")
			Text("Auction the kids on eBay")
			Text("Order Pizza for dinner")
		}
	}
}

struct ContentView_01_01_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_01_01()
	}
}
