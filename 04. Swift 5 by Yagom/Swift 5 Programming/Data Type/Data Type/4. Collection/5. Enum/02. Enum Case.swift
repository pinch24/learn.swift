/**
열거형의 케이스를 한 줄로 나열할 수도 있다.
*/
import Foundation

fileprivate enum School {
	case primary, elementary, middle, high, college, university, graduate
}
func exec_4502() {
	
	var highestEducationLevel: School = .university
	highestEducationLevel = .graduate
	print(highestEducationLevel)
}
