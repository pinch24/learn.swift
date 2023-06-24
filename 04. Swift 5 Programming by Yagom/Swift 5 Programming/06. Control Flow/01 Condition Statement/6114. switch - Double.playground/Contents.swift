let doubleValue: Double = 3.0

switch doubleValue {
	case 0:
		print("Value == zero")
	case 1.5 ... 10.5:
		print("1.5 <= Value <= 10.5")
	default:
		print("Value == \(doubleValue)")
}

/**
 * #### 6-4 부동소수 타입의 범위 연산을 통한 switch case 구성
 */
