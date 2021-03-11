/**
특정 키에 해당하는 값을 제거하려면 removeValue(forKey:) 메서드를 사용한다.
*/
import Foundation

func exec_4204() {
	
	var numberForName = ["Alpha": 1, "Bravo": 2, "Charlie": 3, "Delta": 4]
	numberForName.removeValue(forKey: "Alpha")
	print(numberForName)
}
