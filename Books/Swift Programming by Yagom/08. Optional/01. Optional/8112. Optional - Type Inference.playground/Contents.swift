fileprivate enum School: String {
	case primary = "Primary"
	case elementary = "Elementary"
	case middle = "Middle"
	case high = "High"
	case college = "College"
	case university = "University"
	case graduate = "Graduate"
}

fileprivate enum Numbers: Int {
	case zero
	case one
	case two
	case ten = 10
}

fileprivate let primary = School(rawValue: "Primary")
print(primary as Any)
fileprivate let graduate = School(rawValue: "Graduate")
print(graduate as Any)
print()

fileprivate let one = Numbers(rawValue: 1)
print(one as Any)
fileprivate let three = Numbers(rawValue: 3)
print(three as Any)
print()
