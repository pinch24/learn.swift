struct Area {
	var squareMeter: Double
	
	init(fromPy py: Double) {
		squareMeter = py * 3.3058	// 3.3058: 1평
	}
	
	init(fromSquareMeter squareMeter: Double) {
		self.squareMeter = squareMeter
	}
	
	init(value: Double) {
		squareMeter = value
	}
	
	init(_ value: Double) {
		squareMeter = value
	}
}

let room1: Area = Area(fromPy: 15.0)
print(room1.squareMeter)

let room2: Area = Area(fromSquareMeter: 33.06)
print(room2.squareMeter)

let room3: Area = Area(value: 30.0)
print(room3.squareMeter)

let room4: Area = Area(55.0)
print(room4.squareMeter)

/**
 * ### 11.1.2 이니셜라이저 매개변수
 * #### 11-4 이니셜라이저 매개변수
 */
