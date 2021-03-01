//
//  ContentView_04.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_04: View {
	
    var body: some View {
		
		VStack {
			
			Text("Um...")
			
			HStackView()
		}
    }
}

struct HStackView: View {
	
	var body: some View {
		
		HStack {
			
			Text("Hi,")
			Text("how")
			Text("are you?")
		}
	}
}

struct ContentView_04_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_04()
    }
}
