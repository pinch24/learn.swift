//
//  ContentView_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 21.2 @Binding

import SwiftUI

struct ContentView_02: View {
	
	@State private var wifiEnabled = true
	@State private var userName = ""
	
    var body: some View {
		
		VStack {
			
			Toggle(isOn: $wifiEnabled, label: { Text("Enable Wi-Fi") })
			
			TextField("Enter user name", text: $userName)
			Text(userName)
			
			WifiImageView(wifiEnabled: $wifiEnabled)
		}
		.padding()
    }
}

struct WifiImageView: View {
	
	@Binding var wifiEnabled: Bool
	
	var body: some View {
		
		Image(systemName: wifiEnabled ? "wifi": "wifi.slash")
	}
}

struct ContentView_02_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_02()
    }
}
