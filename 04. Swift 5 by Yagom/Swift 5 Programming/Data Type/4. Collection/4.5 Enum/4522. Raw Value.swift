/**
### 4.5.2 원시 값
4-17. 열거형의 원시 값 지정과 사용
*/
import Foundation

fileprivate enum WeekDays: Character {
	case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

func exec_4522() {
	
	let today: WeekDays = WeekDays.fri
	print("오늘은 \(today.rawValue)요일입니다.")
}
