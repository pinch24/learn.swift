class Account {
	var credit: Int = 0 {
		willSet {
			print("Credit Will Changed \(credit) to \(newValue)")
		}
		
		didSet {
			print("Credit Did Changed \(oldValue) to \(credit)")
		}
	}
	
	var dollarValue: Double {
		get {
			return Double(credit) / 1000.0
		}
		
		set {
			credit = Int(newValue * 1000)
			print("Credit Change to \(newValue) Dollar.")
		}
	}
}

class ForeignAccount: Account {
	override var dollarValue: Double {
		willSet {
			print("Dollar Will Changed \(dollarValue) to \(newValue)")
		}
		
		didSet {
			print("Dollar Did Changed \(oldValue) to \(dollarValue)")
		}
	}
}

let myAccount: ForeignAccount = ForeignAccount()
myAccount.credit = 1000
print()
myAccount.dollarValue = 2
print()

/**
 * #### 10-10 상속받은 연산 프로퍼티의 프로퍼티 감시자 구현
 * 상속받은 클래스에서 연산 프로퍼티를 오버라이드하여 프로퍼티 감시자를 구현할 수도 있다.
 * 오버라이드로 연산 프로퍼티에 프로퍼티 감시자를 추가해도 기존의 연산 프로퍼티(get, set)는 여전히 호출된다.
 */
