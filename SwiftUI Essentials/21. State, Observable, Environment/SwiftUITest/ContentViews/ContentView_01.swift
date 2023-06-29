//
//  ContentView_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 21.1 @State

import SwiftUI

struct ContentView_01: View {
	
	@State private var wifiEnabled = true
	@State private var userName = ""
	
    var body: some View {
		
		VStack {
			
			TextField("Enter user name", text: $userName)
			Text(userName)
		}
		.padding()
    }
}

struct ContentView_01_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_01()
    }
}
