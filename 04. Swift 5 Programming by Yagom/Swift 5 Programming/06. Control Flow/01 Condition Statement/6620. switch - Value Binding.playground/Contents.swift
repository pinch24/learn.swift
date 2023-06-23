import Foundation

typealias NameBirth = (name: String, birth: Int)

let tuple: NameBirth = ("Chris", 45)

switch tuple {
	case ("Chris", 78):
		print("Correct!")
	case ("Chris", let birth):
		print("Correct Name, Incorrect Birth: \(birth)")
	case (let name, 45):
		print("Correct Birth, Incorrect Name: \(name)")
	default:
		print("Who are you looking for?")
}

/**
 * #### 6-10 값 바인딩을 사용한 튜플 switch case 구성
 * let 키워드로 값 바인딩을 사용할 수 있다.
 */
