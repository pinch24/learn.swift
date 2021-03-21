/**
### 5.2.11 연산자 우선순위
5-5 연산자 우선순위에 따른 처리순서
*/
import Foundation

func exec_() {
	
	let intValue: Int = 1
	let resultValue1: Int = intValue << 3 + 5	// (intValue << 3) + 5
	let resultValue2: Int = 1 * 3 + 5			// (1 * 3) + 5
	
	print(resultValue1)
	print(resultValue2)
}
