class Person {
	var height: Float = 0.0
	var weight: Float = 0.0
}

var chris: Person = Person()
chris.height = 178.4
chris.weight = 72
print(chris)

let brad: Person = Person()
brad.height = 182.2
brad.weight = 92
print(brad)

/**
 * ### 9.2.2 클래스 인스턴스의 생성과 초기화
 * #### 9-4 클래스의 인스턴스 생성 및 사용
 * 클래스는 구조체와 달리 멤버와이즈 이니셜라이저를 자동으로 생성하지 않는다.
 * 클래스의 인스턴스는 참조 타입이므로 클래스의 인스턴스를 let으로 선언해도 내부 프로퍼티 값을 변경할 수 있다.
 */
