import Foundation

func exec_5151() {
	
	for i in 1 ... 5 {
		print(i, terminator: " ")
	}
	print()
	
	for i in 1 ..< 5 {
		print(i, terminator: " ")
	}
	print()
}

/**
### 5.1.5 범위 연산자
값(수)의 범위를 나타내고자 할 때 사용한다.
- 폐쇄 범위 연산자(Closed Range Operator): A ... B
- 반폐쇄 범위 연산자(Half Open Range Operator): A ..< B
*/
