class Person {
	var name: String
	
	init(name: String) {
		self.name = name
	}
}

struct Stuff {
	var name: String
	var owner: Person
}

print(type(of: \Person.name))
print(type(of: \Stuff.name))
print(type(of: \Stuff.owner))
print(type(of: \Stuff.owner.name))
print()

let ownerKeyPath = \Stuff.owner
let ownerNameKeyPath = ownerKeyPath.appending(path: \.name)
print(ownerNameKeyPath)
print()

let stuff = Stuff(name: "MacPor", owner: Person(name: "Chris"))
print(stuff[keyPath: ownerNameKeyPath])


/**
 * ### 10.1.7 키 패스
 * #### 10-14 키 패스의 타입 확인
 * 키 패스(Key Path)란 프로퍼티를 위치만 참조하는 방법이다.
 *
 * 키 패스의 타입은 AnyKeyPath라는 클래스로부터 파생된다.
 * WritableKeyPath<Root, Value> 타입은 값 타입을 키 패스로 읽고 쓸 수 있고,
 * ReferenceKeyPath<Root, Value> 타입은 참조 타입을 키 패스로 읽고 쓸 수 있다.
 *
 * 키 패스는 '\타입이름.경로.경로...' 형식으로 구성된다.
 * 이렇게 지정된 키 패스는 각 인스턴스의 keyPath 서브스크립트 메소드를 통해 프로퍼티에 접근할 수 있다.
 */
