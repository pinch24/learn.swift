/**
### 5.3.3 중위 연산자 정의와 구현

#### 5-15 타입 메서드로 구현된 사용자 정의 비교 연산자
*/
import Foundation

class Car2 {
	
	var modelYear: Int?
	var modelName: String?
	
	static func == (lhs: Car2, rhs: Car2) -> Bool {
		
		return lhs.modelName == rhs.modelName
	}
}

struct SmartPhone2 {
	
	var company: String?
	var model: String?
	
	static func == (lhs: SmartPhone2, rhs: SmartPhone2) -> Bool {
		
		return lhs.model == rhs.model
	}
}

func exec_5225() {
	
	let myCar = Car2()
	myCar.modelName = "S"
	
	let yourCar = Car2()
	yourCar.modelName = "S"
	
	var myPhone = SmartPhone2()
	myPhone.model = "SE"
	
	var yourPhone = SmartPhone2()
	yourPhone.model = "6"
	
	print(myCar == yourCar)
	print(myPhone == yourPhone)
}
