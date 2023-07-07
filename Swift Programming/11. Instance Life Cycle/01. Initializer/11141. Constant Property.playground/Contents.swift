class Person {
	let name: String
	var age: Int?
	
	init(name: String) {
		self.name = name
	}
}

let chris: Person = Person(name: "Chris")
print(chris.name)
print(chris.age as Any)

/**
 * ### 11.1.4 상수 프로퍼티
 * #### 11-6 상수 프로퍼티의 초기화
 * 저장 프로퍼티를 let으로 선언하면 초기화 이후 다른 값으로 변경할 수 없다.
 */
