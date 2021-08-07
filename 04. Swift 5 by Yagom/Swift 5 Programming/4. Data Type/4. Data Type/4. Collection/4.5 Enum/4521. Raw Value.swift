/**
### 4.5.2 원시 값
4-17. 열거형의 원시 값 지정과 사용
열거형의 각 항목은 자체로도 하나의 값이지만 항목의 원시 값(Raw Value)도 가질 수 있다. 즉, 특정 타입으로 지정된 값을 가질 수 있다.
*/
import Foundation

fileprivate enum School: String {
	case primary = "유치원"
	case elementary = "초등학교"
	case middle = "중학교"
	case high = "고등학교"
	case college = "대학"
	case university = "대학교"
	case graduate = "대학원"
}

func exec_4521() {
	
	let highestEducationLevel = School.university
	print("최종학력: \(highestEducationLevel.rawValue)")
}
