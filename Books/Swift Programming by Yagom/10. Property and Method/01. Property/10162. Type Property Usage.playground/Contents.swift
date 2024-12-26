class Account {
	static let dollarExchangeRate: Double = 1312.0
	
	var credit: Int = 0
	
	var dollarValue: Double {
		get {
			return Double(credit)
		}
		
		set {
			credit = Int(newValue / Account.dollarExchangeRate)
			print("\(newValue) Won Change to \(credit) Dollar.")
		}
	}
}

var account = Account()
account.dollarValue = 10000

/**
 * #### 10-13 타입 프로퍼티의 사용
 * 타입 프로퍼티를 타입 상수로 사용할 수도 있다.
 */
