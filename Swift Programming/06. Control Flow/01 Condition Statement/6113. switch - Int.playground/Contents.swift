let integerValue: Int = 5

switch integerValue {
	case 0:
		print("Value == zero")
	case 1 ... 10:
		print("Value == 1 ~ 10")
		fallthrough
	case Int.min ..< 0, 101 ..< Int.max:
		print("Value < 0 or Value > 100")
		break
	default:
		print("10 < Value <= 100")
}

/**
 * ### 6.1.2 switch 구문
 * 스위프트의 switch 구문에서 break 사용은 선택 사항이다.
 * switch 구분의 case를 연속 실행하려면 fallthrough 키워드를 사용한다.
 *
 * switch 구문의 조건에는 다양한 타입의 값이 들어갈 수 있다. 단 case에 들어갈 비교 값과 데이터 타입이 같아야 한다.
 * 비교될 값이 명확히 한정적인 값이 아닐 때는 default를 반드시 작성해야 한다.
 * case에는 범위 연산자를 사용할 수도, where 절을 사용하여 조건을 확장할 수도 있다.
 * case 레이블 다음에는 반드시 실행 가능한 코드가 위치해야 한다.
 *
 * #### 6-3 switch 구문 기본 구현
 */
