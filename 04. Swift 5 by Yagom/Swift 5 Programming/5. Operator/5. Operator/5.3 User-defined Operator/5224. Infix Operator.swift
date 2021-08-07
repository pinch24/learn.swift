/**
### 5.3.3 중위 연산자 정의와 구현
클래스, 구조체 등에서도 연산자를 새로 정의하거나 중복 정의할 수 있다.

#### 5-14 클래스 및 구조체의 비교 연산자 구현
*/
import Foundation

class Car {
	
	var modelYear: Int?
	var modelName: String?
}

struct SmartPhone {
	
	var company: String?
	var model: String?
}

func == (lhs: Car, rhs: Car) -> Bool {
	
	return lhs.modelName == rhs.modelName
}

func == (lhs: SmartPhone, rhs: SmartPhone) -> Bool {
	
	return lhs.model == rhs.model
}

func exec_5224() {
	
	let myCar = Car()
	myCar.modelName = "S"
	
	let yourCar = Car()
	yourCar.modelName = "S"
	
	var myPhone = SmartPhone()
	myPhone.model = "SE"
	
	var yourPhone = SmartPhone()
	yourPhone.model = "6"
	
	print(myCar == yourCar)
	print(myPhone == yourPhone)
}
