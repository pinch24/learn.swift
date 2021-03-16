/**
배열의 중간에 요소를 삽입하고 싶다면 insert(_:at:) 메서드를 사용한다.
*/
import Foundation

func exec_4416() {
	
	var names = ["Alpha", "Bravo", "Charlie", "Delta"]
	names.insert("Beta", at: 1)
	print(names)
}
