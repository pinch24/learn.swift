/**
### 4.5.5 순환 열거형
4-26. 특정 항목에 순환 열거형 항목 명시
순환 열거형은 열거형 항목의 연관 값이 열거형 자신의 값이고자 할 때 사용한다.
순환 열거형을 명시하고 싶으면 indirect 키워드를 사용한다.
*/
import Foundation

fileprivate enum ArithmeticExpression1 {
	
	case number(Int)
	indirect case addition(ArithmeticExpression1, ArithmeticExpression1)
	indirect case multiplication(ArithmeticExpression1, ArithmeticExpression1)
}

fileprivate indirect enum ArithmeticExpression2 {
	
	case number(Int)
	case addition(ArithmeticExpression2, ArithmeticExpression2)
	case multiplication(ArithmeticExpression2, ArithmeticExpression2)
}

func exec_4551() {}
