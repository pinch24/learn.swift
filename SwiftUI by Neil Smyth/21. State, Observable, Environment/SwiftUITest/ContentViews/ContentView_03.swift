//
//  ContentView_03.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/28.
//
// 21.3 @Published, @ObservedObject

import SwiftUI

class UserData: ObservableObject {
	
	@Published var userCount = 0
	@Published var currentUser = "None"
	
	init() {
		
		updateData()
	}
	
	func updateData() {
		
		print("updateData() - userCount: \(userCount), currentUser: \(currentUser)")
	}
}

struct ContentView_03: View {
	
	@ObservedObject var userData: UserData
	
	var body: some View {
		
		Text("\(userData.currentUser), you are user number \(userData.userCount)")
    }
}

struct ContentView_03_Previews: PreviewProvider {
	
    static var previews: some View {
		
		ContentView_03(userData: UserData())
    }
}
