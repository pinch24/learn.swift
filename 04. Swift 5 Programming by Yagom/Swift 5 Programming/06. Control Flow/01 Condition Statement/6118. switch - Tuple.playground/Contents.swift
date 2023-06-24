typealias NameBirth = (name: String, birth: Int)

let tuple: NameBirth = ("Chris", 78)

switch tuple {
	case ("Chris", 78):
		print("Correct!")
	default:
		print("Who are you looking for?")
}

/**
 * #### 6-8 튜플 switch case 구성
 */
