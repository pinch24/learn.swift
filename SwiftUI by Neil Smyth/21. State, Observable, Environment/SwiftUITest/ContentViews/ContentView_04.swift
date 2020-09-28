//
//  ContentView_04.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 21.3 @EnvironmentObject

import SwiftUI

class ConfigData: ObservableObject {
	
	@Published var configVersion = 0.0
	@Published var currentConfig = "None"
	
	init() {
		
		updateData()
	}
	
	func updateData() {
		
		print("updateData() - configVersion: \(configVersion), currentConfig: \(currentConfig)")
	}
}

struct ContentView_04: View {
	
	@EnvironmentObject var configData: ConfigData
	
	var body: some View {
		
		Text("\(configData.currentConfig), Version \(configData.configVersion)")
    }
}

struct ContentView_04_Previews: PreviewProvider {

    static var previews: some View {

		let contentView = ContentView_04()
		let configData = ConfigData()
		
		contentView.environmentObject(configData)
    }
}
