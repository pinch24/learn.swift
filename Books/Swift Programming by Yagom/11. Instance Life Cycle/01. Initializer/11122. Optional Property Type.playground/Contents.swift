class Person {
	var name: String
	var age: Int?
	
	init(name: String) {
		self.name = name
	}
}

let chris: Person = Person(name: "Chris")
print(chris.name)
print(chris.age as Any)
print()

chris.age = 45
print(chris.age as Any)

chris.name = "Chris Lattner"
print(chris.name)

/**
 * ### 11.1.3 옵셔널 프로퍼티 타입
 * #### 11-5 Person 클래스
 * 초기화 과정에서 값을 초기화하지 않아도 되는 저장 프로퍼티는 옵셔널로 선언할 수 있다.
 * 또는 초기화 과정에서 값을 지정해주기 어려운 저장 프로퍼티도 옵셔널로 선언할 수 있다.
 * 옵셔널로 선언한 저장 프로퍼티를 초기화하지 않으면 자동으로 nil이 할당된다.
 */
