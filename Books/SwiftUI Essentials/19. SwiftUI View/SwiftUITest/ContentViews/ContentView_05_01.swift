//
//  ContentView_05_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_05_01: View {
	
    var body: some View {
		
		VStack {
			
			Text("Hello.")
				.foregroundColor(.black)
				.bold()
			
			
			Text("Good Bye!")
				.foregroundColor(.gray)
		}
    }
}

struct ContentView_05_01_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_05_01()
    }
}
