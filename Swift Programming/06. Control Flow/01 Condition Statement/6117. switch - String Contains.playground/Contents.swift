let name: String = "Lattner"

switch name {
	case _ where name.contains("Chris"),
		_ where name.contains("Lattner"):
		print("He created Swift.")
	case _ where name.contains("Brad"),
		_ where name.contains("J."),
		_ where name.contains("Cox"):
		print("He created Objective-C.")
	case _ where name.contains("Dennis"),
		_ where name.contains("MacAlistair"),
		_ where name.contains("Ritchie"):
		print("He created C.")
	case _ where name.contains("Bjarne"),
		_ where name.contains("Stroustrup"):
		print("He created C++.")
	case _ where name.contains("Graydon"),
		_ where name.contains("Hoare"):
		print("He created Rust.")
	case _ where name.contains("Guido"),
		_ where name.contains("van"),
		_ where name.contains("Rossum"):
		print("He created Python.")
	case _ where name.contains("Anders"),
		_ where name.contains("Hejlsberg"):
		print("He created TypeScript, C#, Turbo-Pascal.")
	default:
		print("I don't know who you are.")
}

/**
 * #### switch for Matching Substring of String
 */
