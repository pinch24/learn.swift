/**
**튜플(Tuple)**은 따로 타입을 지정하지 않은 '저장된 데이터의 묶음'이다.
*/
import Foundation

func exec_301() {
	
	var person: (String, Int, Double) = ("John", 18, 182.4)
	print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")

	person.1 = 19
	person.2 = 184.2
	print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")
}
