let position: String = "Employee"
let year: Int = 1
let isIntern: Bool = false

switch position {
	case "Employee" where isIntern == true:
		print("He is Intern.")
	case "Employee" where year < 2 && isIntern == false:
		print("He is Rookie.")
	case "Employee" where year > 5:
		print("He is Senior.")
	case "Employee":
		print("He is Employee.")
	case "Agent":
		print("He is Agent.")
	default:
		print("Is he Owner?")
}

/**
 * #### 6-11 where를 사용하여 switch case 확장
 */
