//
//  CarView.swift
//  SwiftUITest
//
//  Created by mk on 2020/10/04.
//

import SwiftUI

struct CarView: View {
	
	let selectedCar: Car
	
	var body: some View {
		
		Form {
			
			Section(header: Text("Car View")) {
				
				Image(selectedCar.imageName)
					.resizable()
					.cornerRadius(12.0)
					.aspectRatio(contentMode: .fit)
					.padding()
				
				Text(selectedCar.name)
					.font(.headline)
				
				Text(selectedCar.description)
					.font(.body)
				
				HStack {
					
					Text("Hybrid")
						.font(.headline)
					
					Spacer()
					
					Image(systemName: selectedCar.isHybrid ? "checkmark.circle": "xmark.circle")
				}
			}
		}
	}
}

struct AddNewCar: View {
	
	@ObservedObject var carStore: CarStore
	
	@State var isHybrid = false
	@State var name = ""
	@State var description = ""
	
	var body: some View {
		
		Form {
			
			Section(header: Text("Car Details")) {
				
				Image(systemName: "car.fill")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.padding()
				
				DataInput(title: "Model", userInput: $name)
				DataInput(title: "Description", userInput: $description)
				
				Toggle(isOn: $isHybrid) {
					
					Text("Hybrid")
						.font(.headline)
				}
				.padding()
			}
			
			Button(action: addNewCar) {
				
				Text("Add Car")
			}
		}
	}
	
	func addNewCar() {
		
		let newCar = Car(id: UUID().uuidString, name: name, description: description, isHybrid: isHybrid, imageName: "tesla_model_3")
		
		carStore.cars.append(newCar)
		
		//self.presentationMode.wrappedValue.dismiss()
	}
}

struct DataInput: View {
	
	var title: String
	
	@Binding var userInput: String
	
	var body: some View {
		
		VStack(alignment: .leading) {
			
			Text(title)
				.font(.headline)
			
			TextField("Enter \(title)", text: $userInput)
				.textFieldStyle(RoundedBorderTextFieldStyle())
		}
		.padding()
	}
}
