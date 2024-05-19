struct CoordinatePoint {
	var x: Int
	var y: Int
}

class Position {
	var point: CoordinatePoint
	let name: String
	
	init(name: String, currentPoint: CoordinatePoint) {
		self.name = name
		self.point = currentPoint
	}
}

let chrisPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)
let chrisPosition: Position = Position(name: "Chris", currentPoint: chrisPoint)
print(chrisPosition.name)
print(chrisPosition.point)

/**
 * ### 10.1.1 저장 프로퍼티
 * #### 10-1 저장 프로퍼티의 선언 및 인스턴스 생성
 * 구조체는 저장 프로퍼티를 모두 초기화하는 멤버와이즈 이니셜라이저를 자동으로 생성한다.
 * 클래스의 저장 프로퍼티는 옵셔널 타입이 아니면 기본값을 지정해주거나 이니셜라이저에서 초기화해주어야 한다.
 * 클래스의 상수 프로퍼티는 인스턴스가 생성 될 때 이니셜라이저에서 한 번만 값을 할당할 수 있으며, 자식 클래스에서 재정의 할 수 없다.
 */
