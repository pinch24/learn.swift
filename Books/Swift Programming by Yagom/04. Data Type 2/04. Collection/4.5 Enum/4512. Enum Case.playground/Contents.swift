fileprivate enum School {
	case primary, elementary, middle, high, college, university, graduate
}

fileprivate var highestEducationLevel: School = .university
highestEducationLevel = .graduate
print(highestEducationLevel)
print(highestEducationLevel.hashValue)
print(type(of: highestEducationLevel.hashValue))

/**
 * ### 4.5.1 기본 열거형
 * #### 4-15. 열거형의 선언
 * 열거형의 케이스를 한 줄로 나열할 수도 있다.
 */
