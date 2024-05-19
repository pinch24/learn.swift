class Person {
	let name: String
	var age: Int?
	
	init?(name: String) {
		if name.isEmpty {
			return nil
		}
		
		self.name = name
	}
	
	init?(name: String, age: Int) {
		if name.isEmpty || age < 0 {
			return nil
		}
		self.name = name
		self.age = age
	}
}

let chris: Person? = Person(name: "Chris", age: 45)
if let person: Person = chris {
	print(person.name)
}
else {
	print("Person wasn't initialized")
}

let brad: Person? = Person(name: "Brad", age: -10)
if let person: Person = brad {
	print(person.name)
}
else {
	print("Person wasn't initialized")
}

let gray: Person? = Person(name: "", age: 30)
if let person: Person = gray {
	print(person.name)
}
else {
	print("Person wasn't initialized")
}


/**
 * ### 11.1.7 실패 가능한 이니셜라이저
 * #### 11-9 실패 가능한 이니셜라이저
 * 이니셜라이저의 전달인자로 적절하지 않은 값이 전달됐을 때 인스턴스 초기화에 실패할 수 있다.
 * 이런 실패 가능성을 내포한 이니셜라이저를 실패 가능한 이니셜라이저(Failable Initializer)라고 한다.
 * 실패 가능한 이니셜라이저는 클래스, 구조체, 열거형 모두에 사용할 수 있다.
 *
 * 실패 가능한 이니셜라이저는 실패했을 때 nil을 리턴한다. 그래서 리턴 타입이 옵셔널로 지정된다.
 * 따라서 실패 가능한 이니셜라이저는 init? 키워드로 정의된다.
 *
 * 실패하지 않는 이니셜라이저와실패 가능한 이니셜라이저를 동일한 매개변수로 정의 할 수 없다.
 * 실패 가능한 이니셜라이저는 실제로 특정 값을 반환하지는 않기 때문이다.
 * 초기화에 실패했을 때는 return nil을, 초기화에 성공했을 때는 return을 수행해 초기화의 성공과 실패를 구분할 뿐 실제로 값을 리턴하지는 않는다.
 */
