class Person {
	let name: String
	
	init(name: String) {
		self.name = name
	}
}

struct Stuff {
	var name: String
	var owner: Person
}

let chris = Person(name: "Chris")
let brad = Person(name: "Brad")
let macbook = Stuff(name: "Macbook Pro", owner: chris)
let iMac = Stuff(name: "iMac", owner: chris)
var iPhone = Stuff(name: "iPhone", owner: brad)

let stuffNameKeyPath = \Stuff.name
let ownerKeyPath = \Stuff.owner
let ownerNameKeyPath = ownerKeyPath.appending(path: \.name)

print(macbook[keyPath: stuffNameKeyPath])
print(iMac[keyPath: stuffNameKeyPath])
print(iPhone[keyPath: stuffNameKeyPath])
print()

print(macbook[keyPath: ownerNameKeyPath])
print(iMac[keyPath: ownerNameKeyPath])
print(iPhone[keyPath: ownerNameKeyPath])
print()

iPhone[keyPath: stuffNameKeyPath] = "iPhone Pro"
iPhone[keyPath: ownerKeyPath] = chris
print(iPhone[keyPath: stuffNameKeyPath])
print(iPhone[keyPath: ownerNameKeyPath])
print()

/**
 * #### 10-16 keyPath 서브스크립트와 키 경로 활용
 * 키 패스는 타입 외부로 공개된 인스턴스 프로퍼티 혹은 서브스크립트에 한하여 표현할 수 있다.
 * let으로 지정한 타입과 프로퍼티는 서브스크립트로도 변경할 수 없다.
 *
 * 자신을 나타내는 키 패스로 \.self를 사용할 수 있다.
 * \.self는 인스턴스 자체를 표현하는 키 패스가 된다.
 * 컴파일러가 타입 추론이 가능한 경우에는 키 패스의 타입 이름도 생략할 수 있다.
 *
 * 키 패스를 활용하면 타입 간의 의존성을 낮추는 데 도움을 줄 수 있다.
 * 애플 프레임워크는 Key-Value Coding을 기반으로 구성되어있다.
 */
