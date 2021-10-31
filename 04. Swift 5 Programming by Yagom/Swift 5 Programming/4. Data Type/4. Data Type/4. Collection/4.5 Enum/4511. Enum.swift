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

func exec_4511() {
	
	var highestEducationLevel: School = .university
	highestEducationLevel = .graduate
	print(highestEducationLevel)
}

/**
### 4.5.1 기본 열거형
4-14. 열거형의 선언
*/
