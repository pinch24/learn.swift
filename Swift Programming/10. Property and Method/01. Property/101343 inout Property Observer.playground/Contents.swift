class Account {
	var credit: Int = 0 {
		willSet {
			print("Credit Will Changed \(credit) to \(newValue)")
		}
		
		didSet {
			print("Credit Did Changed \(oldValue) to \(credit)")
		}
	}
}

func changeToValue(value: inout Account) {
	print(value.credit)
	return
}

var account = Account()
account.credit = 1000
print()

changeToValue(value: &account)


/**
 * #### Not Verified
 * 만약 프로퍼티 감시자가 있는 프로퍼티를 입출력 매개변수로 전달하면 willSet, didSet 메서드도 호출된다. 값이 변하든 변하지않든 입출력 매개변수는 함수가 종료되는 시점에 값을 다시 쓰기 때문이다.
 */
