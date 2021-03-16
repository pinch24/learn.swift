/**
### 5.1.3 비교(comparison) 연산자
패턴 매치 연산자는 대상이 범위 안에 속하는지 판단하는 연산자이다.
*/
import Foundation

func exec_5133() {
	
	var n = 4
	
	if 0 ..< 10 ~= n {
		
		n *= 10
	}
	
	print(n)
}
