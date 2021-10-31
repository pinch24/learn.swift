import Foundation

func exec_5222() {
	
	let five: Int = 5
	let fivePlusTen: Int = **five**	// (5 + 10) * (5 + 10) = 225
	print("**\(fivePlusTen)** = \(fivePlusTen)")
}

/**
### 5.3.2 후위 연산자 정의와 구현
하나의 피연산자에 전위 연산과 후위 연산을 한 줄에 사용하게 되면 후위 연산을 먼저 수행한다.

#### 5-11 전위 연산자와 후위 연산자 동시 사용
*/
