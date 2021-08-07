/**
### 5.3.2 후위 연산자 정의와 구현
후위 연산자의 함수 구현 앞에는 postfix 키워드를 붙여야 한다.

#### 5-10 사용자 정의 후위 연산자 정의와 함수 구현
*/
import Foundation

postfix operator **

postfix func ** (value: Int) -> Int {
	
	return value + 10
}

func exec_5221() {
	
	let five: Int = 5
	let fivePlusTen: Int = five**
	print("\(fivePlusTen)** = \(fivePlusTen)")
}
