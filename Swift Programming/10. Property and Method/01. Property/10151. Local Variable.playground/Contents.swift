var wonInPocker: Int = 2000 {
	willSet {
		print("Pocket Won Will Changed \(wonInPocker) to \(newValue)")
	}
	
	didSet {
		print("Pocket Won Did Changed \(oldValue) to \(wonInPocker)")
	}
}

var dollarInPocket: Double {
	get {
		return Double(wonInPocker) / 1000.0
	}
	
	set {
		wonInPocker = Int(newValue * 1000.0)
		print("Pocket Won Change to \(newValue) Dollar.")
	}
}

dollarInPocket = 3.5

/**
 * #### 10-11 저장변수의 감시자와 연산변수
 */
