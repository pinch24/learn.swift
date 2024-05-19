struct CoordinatePoint {
	var x: Int = 0
	var y: Int = 0
}

class Position {
	lazy var point: CoordinatePoint = CoordinatePoint()
	let name: String
	
	init(name: String) {
		self.name = name
	}
}

let chrisPosition: Position = Position(name: "Chris")
chrisPosition.point = CoordinatePoint(x: 10, y: 5)
print(chrisPosition.name)
print(chrisPosition.point as Any)


/**
 * ### 10.1.2 지연 저장 프로퍼티
 * #### 10-4 지연 저장 프로퍼티
 * 지연 저장 프로퍼티(Lazy Sotred Property)는 호출이 있어야 값을 초기화한다.
 * 상수는 인스턴스가 생성되기 전에 초기화되므로 지연 저장 프로퍼티는 변수에만 지정할 수 있다.
 *
 * 다중 스레드 환경에서는 지연 저장 프로퍼티가 한 번만 초기화된다는 보장이 없다.
 * 많은 스레드가 비슷한 시점에 지연 저장 프로퍼티에 접근하게 되면 여러 번 초기화가 일어날 수 있다.
 */
