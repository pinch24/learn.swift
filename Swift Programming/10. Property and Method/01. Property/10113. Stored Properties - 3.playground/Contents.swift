struct CoordinatePoint {
	var x: Int
	var y: Int
}

class Position {
	var point: CoordinatePoint?
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
 * #### 10-3 옵셔널 저장 프로퍼티
 * 옵셔널과 이니셜라이저를 사용해서 구조체와 클래스의 사용 의도를 유도할 수 있다.
 */
