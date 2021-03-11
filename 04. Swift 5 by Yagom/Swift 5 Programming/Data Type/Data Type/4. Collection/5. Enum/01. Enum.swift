/**
열거형(Enumeration)은 연관된 항목들을 묶어서 표현할 수 있는 타입이다.
열거형은 정의한 값 외에는 추가/수정이 불가하기 때문에 정해진 값만 저장할 수 있다.

열거형은,
- 제한된 선택지를 주고 싶을 때
- 정해진 값 외에는 입력받고 싶지 않을 때
- 예상된 입력 값이 한정되어 있을 때

스위프트의 열거형은 항목별로 값을 가질 수도, 가지지 않을 수도 있다. 각 항목이 그 자체로 고유의 값이 될 수 있다. 스위프트의 열거형은 각 열거형이 고유의 타입으로 인정되기 때문에 실수로 버그가 일어날 가능성을 없앴다.

열거형의 각 항목이 원시 값(Raw Value)이라는 실제 값을 가질 수도 있고, 연관 값(Associated Value)을 사용하여 값의 묶음으로 구현할 수 있다.
*/
import Foundation

fileprivate enum School {
	case primary
	case elementary
	case middle
	case high
	case college
	case university
	case graduate
}

func exec_4501() {
	
	var highestEducationLevel: School = .university
	highestEducationLevel = .graduate
	print(highestEducationLevel)
}
