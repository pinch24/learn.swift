class Person {
	let name: String
	var age: Int?
	
	init(name: String) {
		self.name = name
	}
}

class People: Person {
	var contact: String?
	
	override init(name: String) {
		#if ERROR
		self.name = name
		#endif
		
		super.init(name: name)
	}
		
	init(name: String, age: Int?, contact: String?) {
		#if ERROR
		self.name = name
		#endif
		
		super.init(name: name)
		
		self.age = age
		self.contact = contact
	}
}

let chris: People = People(name: "Chris", age: 45, contact: "010-2222-3333")
print(chris.name)
print(chris.age as Any)

/**
 * ### 11.1.4 상수 프로퍼티
 * 클래스의 let 프로퍼티는 프로퍼티가 정의된 클래스에서만 초기화 할 수 있다.
 * 해당 클래스를 상속 받은 자식 클래스의 이니셜라이저에서는 부모 클래스의 값을 초기화 할 수 없다.
 * 대신 super 프로퍼티로 상위 클래스의 이니셜라이저를 호출해서 초기화 하면 된다.
 */
