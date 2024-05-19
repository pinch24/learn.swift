struct CoordinatePoint {
	var x: Int = 0
	var y: Int = 0
}

class Position {
	var point: CoordinatePoint = CoordinatePoint()
	var name: String = "Unknown"
}

let chrisPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)
let chrisPosition: Position = Position()
chrisPosition.name = "Chris"
chrisPosition.point = chrisPoint
print(chrisPosition.name)
print(chrisPosition.point)

/**
 * #### 10-2 저장 프로퍼티의 초깃값 지정
 * 구조체와 클래스에 초기값을 지정하면 생략할 수 있는 과정이 있어 사용이 간편해진다.
 */
