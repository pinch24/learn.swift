//
//  SwiftUITestApp.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/21.
//

import SwiftUI

@main
struct SwiftUITestApp: App {
	
    var body: some Scene {
		
        WindowGroup {
			
			let contentView = ContentView_04()
			let configData = ConfigData()
			
			contentView.environmentObject(configData)
        }
    }
}
