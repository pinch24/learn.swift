import Foundation

let name: String = "Chris Lattner"

switch name {
	case "Chris Lattner":
		print("He created Swift.")
	case "Brad J. Cox":
		print("He created Objective-C.")
	case "Dennis MacAlistair Ritchie":
		print("He created C.")
	case "Bjarne Stroustrup":
		print("He created C++.")
	case "Graydon Hoare":
		print("He created Rust.")
	case "Guido van Rossum":
		print("He created Python.")
	case "Anders Hejlsberg":
		print("He created TypeScript, C#, Turbo-Pascal.")
	default:
		print("I don't know who you are.")
}

/**
 * #### 6-5 문자열 switch case 구성
 */
