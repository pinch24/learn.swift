//
//  ContentView_03_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

struct ContentView_03_02: View {
	
    var body: some View {
		
		Text("Hi, ") + Text("how ") + Text("are you?")
    }
}

struct ContentView_03_02_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_03_02()
    }
}
