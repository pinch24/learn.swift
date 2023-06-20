import Foundation

fileprivate enum ArithmeticExpression {
	case number(Int)
	indirect case addition(ArithmeticExpression, ArithmeticExpression)
	indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

fileprivate func evaluate(_ expression: ArithmeticExpression) -> Int {
	switch expression {
		case .number(let value):
			return value
		case .addition(let left, let right):
			return evaluate(left) + evaluate(right)
		case .multiplication(let left, let right):
			return evaluate(left) * evaluate(right)
	}
}

fileprivate let five = ArithmeticExpression.number(5)
fileprivate let four = ArithmeticExpression.number(4)
fileprivate let sum = ArithmeticExpression.addition(five, four)
fileprivate let final = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

print("5 = \(evaluate(five))")
print("4 = \(evaluate(four))")
print("(5 + 4) = \(evaluate(sum))")
print("(5 + 4) * 2 = \(evaluate(final))")

/**
 * ### 4.5.5 순환 열거형
 * #### 4-28. 특정 항목에 순환 열거형의 사용
 * evaluate()는 ArithmeticExpression 열거형의 계산을 도와주는 기능을 구현한 순환 함수(Recursive Function)이다.
 * indirect 키워드는 이진 탐색 트리 등의 순환 알고리즘을 구현할 때 유용하다.
 */
