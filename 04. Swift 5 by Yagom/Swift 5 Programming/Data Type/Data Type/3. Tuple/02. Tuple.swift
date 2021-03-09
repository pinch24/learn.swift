/**
각 튜플의 요소에 접근하는 인덱스를 이름으로 지정할 수도 있다.
*/
import Foundation

func exec_02() {
	
	var person: (name: String, age: Int, height: Double) = ("John", 18, 182.4)
	print("Name: \(person.name), Age: \(person.age), Height: \(person.height)")

	person.age = 19
	person.2 = 184.2
	print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")
}
