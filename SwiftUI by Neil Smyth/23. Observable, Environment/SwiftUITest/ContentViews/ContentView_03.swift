//
//  ContentView_03.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//

import SwiftUI

struct ContentView_03: View {
	
	@EnvironmentObject var timerData: TimerData
	
	var body: some View {
		
		NavigationView {
			
			VStack {
				
				Text("Timer Count = \(timerData.timeCount)")
					.font(.largeTitle)
					.fontWeight(.bold)
					.padding()
				
				Button(action: resetCount, label: { Text("Reset Counter") })
				
				NavigationLink(
					destination: SecondView_03(),
					label: { Text("Next Screen")}
				).padding()
			}
		}
	}
	
	func resetCount() {
		
		timerData.resetCount()
	}
}

struct ContentView_03_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_03().environmentObject(TimerData())
	}
}
