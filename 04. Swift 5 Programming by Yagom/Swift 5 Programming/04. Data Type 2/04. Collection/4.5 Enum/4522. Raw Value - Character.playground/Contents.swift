fileprivate enum WeekDays: Character {
	case mon = "M", tue = "T", wed = "W", thu = "H", fri = "F", sat = "S", sun = "U"
}

fileprivate let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue)요일입니다.")

/**
 * ### 4.5.2 원시 값
 * #### 4-17. 열거형의 원시 값 지정과 사용
 */
