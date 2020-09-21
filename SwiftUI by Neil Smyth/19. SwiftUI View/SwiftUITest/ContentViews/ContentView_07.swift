//
//  ContentView_07.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_07: View {
	
    var body: some View {
		
		VStack {
			
			Text("Hello.")
				.foregroundColor(Color(red: 1.0, green: 0.8, blue: 0.0, opacity: 1.0))
				.font(.custom("Arial", size: 32))
				.bold()
			
			
			Text("Good Bye!")
				.foregroundColor(Color(red: 200 / 255, green: 100 / 255, blue: 200 / 255, opacity: 0.4))
				.font(.custom("Copperplate", size: 64))
		}
    }
}

struct ContentView_07_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_07()
    }
}
