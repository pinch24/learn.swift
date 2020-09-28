//
//  SwiftUITestApp.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//

import SwiftUI

@main
struct SwiftUITestApp: App {
	
    var body: some Scene {
		
        WindowGroup {
			
			//ContentView_01()
			//ContentView_02()
			ContentView_03().environmentObject(TimerData())
        }
    }
}
