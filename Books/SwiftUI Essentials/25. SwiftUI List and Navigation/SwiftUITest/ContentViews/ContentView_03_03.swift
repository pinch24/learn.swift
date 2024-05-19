//
//  ContentView_03_03.swift
//  SwiftUITest
//
//  Created by mk on 2020/10/02.
//
// 25.3 Navigation

import SwiftUI

//struct ToDoItem: Identifiable {
//
//	var id = UUID()
//	var task: String
//	var imageName: String
//}

struct ContentView_03_03: View {
	
	@State var toggleStatus = true
	
	var listData: [ToDoItem] = [
		
		ToDoItem(task: "Take out trash", imageName: "trash.circle.fill"),
		ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
		ToDoItem(task: "Wash the car", imageName: "car.fill"),
		ToDoItem(task: "Vaccum house", imageName: "house.fill"),
	]
	
	var body: some View {
		
		NavigationView {
			
			List {
				
				Section(header: Text("Settings")) {
					
					Toggle(isOn: $toggleStatus, label: { Text("Allow Notifications") })
				}
				
				Section(header: Text("To Do Tasks")) {
					
					ForEach (listData) { item in
						
						HStack {
							
							NavigationLink(destination: Text(item.task)) {
								
								Image(systemName: item.imageName)
								Text(item.task)
							}
						}
					}
				}
			}
			.navigationBarTitle(Text("To Do List"))
			.navigationBarItems(trailing: Button(action: addTask, label: { Text("Add") }))
		}
	}
	
	func addTask() {
		
		print("addTask()")
	}
}

struct ContentView_03_03_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_03_03()
	}
}
