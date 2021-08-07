/**
### 4.5.5 순환 열거형
4-26. 특정 항목에 순환 열거형 항목 명시
순환 열거형은 열거형 항목의 연관 값이 열거형 자신의 값이고자 할 때 사용한다.
순환 열거형을 명시하고 싶으면 indirect 키워드를 사용한다.

evaluate()는 ArithmeticExpression 열거형의 계산을 도와주는 순환 함수(Recursive Function)이다.
indirect 키워드는 이진 탐색 트리 등의 순환 알고리즘을 구현할 때 유용하다.
*/
import Foundation

enum ArithmeticExpression {
	
	case number(Int)
	indirect case addition(ArithmeticExpression, ArithmeticExpression)
	indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
	
	switch expression {
	
		case .number(let value):
			return value
			
		case .addition(let left, let right):
			return evaluate(left) + evaluate(right)
			
		case .multiplication(let left, let right):
			return evaluate(left) * evaluate(right)
	}
}

func exec_4552() {
	
	let five = ArithmeticExpression.number(5)
	let four = ArithmeticExpression.number(4)
	let sum = ArithmeticExpression.addition(five, four)
	let final = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
	
	let result: Int = evaluate(final)
	print("(5 + 4) * 2 = \(result)")
}
