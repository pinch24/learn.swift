class Account {
	var credit: Int = 0 {
		willSet {
			print("Will Changed \(credit) to \(newValue)")
		}
		
		didSet {
			print("Did Changed \(oldValue) to \(credit)")
		}
	}
}

let myAccount: Account = Account()
print(myAccount.credit)

myAccount.credit = 1000
print(myAccount.credit)

/**
 * ### 10.1.4 프로퍼티 감시자
 * #### 10-9 프로퍼티 감시자
 * 프로퍼티 감시자(Property Observers)를 사용하면 프로퍼티의 값이 변경됨에 따라 적절한 작업을 취할 수 있다.
 * 프로퍼티 감시자는 프로퍼티의 값이 새로 할당될 때 마다 호출된다. 변경되는 값이 같아도 호출된다.
 *
 * 프로퍼티 감시자는 willSet, didSet 메서드를 통해 구현되고, 각각 newValue, oldValue라는 매개변수가 지정되어 있다.
 *
 * 프로퍼티 감시자는 지연 저장 프로퍼티에는 사용할 수 없다.
 */
