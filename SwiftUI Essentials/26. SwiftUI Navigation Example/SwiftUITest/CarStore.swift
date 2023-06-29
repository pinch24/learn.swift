//
//  CarStore.swift
//  SwiftUITest
//
//  Created by mk on 2020/10/04.
//

import SwiftUI

class CarStore: ObservableObject {
	
	@Published var cars: [Car]
	
	init(cars: [Car] = []) {
		
		self.cars = cars
	}
}

var carData: [Car] = loadJson("CarData.json")

func loadJson<T: Decodable>(_ filename: String) -> T {
	
	let data: Data
	
	guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
		
		fatalError("\(filename) not found.")
	}
	
	do {
		
		data = try Data(contentsOf: file)
	}
	catch {
		
		fatalError("Could not load \(filename): (error)")
	}
	
	do {
		
		return try JSONDecoder().decode(T.self, from: data)
	}
	catch {
		
		fatalError("Unable to parse \(filename): (error)")
	}
}

struct Car: Codable, Identifiable {
	
	var id: String
	var name: String
	
	var description: String
	var isHybrid: Bool
	
	var imageName: String
}
