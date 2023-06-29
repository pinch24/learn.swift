fileprivate enum ArithmeticExpression {
	case number(Int)
	indirect case addition(ArithmeticExpression, ArithmeticExpression)
	indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

fileprivate var expr1 = ArithmeticExpression.multiplication(.number(1), .addition(.number(2), .number(3)))
print(expr1)
print()

fileprivate indirect enum IndirectArithmeticExpression {
	case number(Int)
	case addition(IndirectArithmeticExpression, IndirectArithmeticExpression)
	case multiplication(IndirectArithmeticExpression, IndirectArithmeticExpression)
}

fileprivate var expr2 = IndirectArithmeticExpression.multiplication(.number(10), .addition(.number(20), .number(30)))
print(expr2)
print()

/**
 * ### 4.5.5 순환 열거형
 * #### 4-26. 특정 항목에 순환 열거형 항목 명시
 * 순환 열거형은 열거형 항목의 연관 값이 열거형 자신의 값이고자 할 때 사용한다.
 * 순환 열거형을 명시하고 싶으면 **indirect** 키워드를 사용한다.
 */
