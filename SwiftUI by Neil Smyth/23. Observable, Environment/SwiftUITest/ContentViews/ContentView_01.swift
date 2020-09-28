//
//  ContentView_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//

import SwiftUI

struct ContentView_01: View {
	
	@ObservedObject var timerData: TimerData = TimerData()
	
	var body: some View {
		
		NavigationView {
			
			VStack {
				
				Text("Timer Count = \(timerData.timeCount)")
					.font(.largeTitle)
					.fontWeight(.bold)
					.padding()
				
				Button(action: resetCount, label: { Text("Reset Counter") })
			}
		}
	}
	
	func resetCount() {
		
		timerData.resetCount()
	}
}

struct ContentView_01_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_01()
	}
}
