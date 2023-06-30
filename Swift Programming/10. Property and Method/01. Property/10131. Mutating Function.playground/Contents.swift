struct CoordinatePoint {
	var x: Int
	var y: Int
	
	func oppositePoint() -> Self {
		return CoordinatePoint(x: -x, y: -y)
	}
	
	mutating func setOppositePoint(_ opposite: CoordinatePoint) {
		x = -opposite.x
		y = -opposite.y
	}
}

var chrisPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)
print(chrisPosition)
print(chrisPosition.oppositePoint())
print(chrisPosition)
print()

chrisPosition.setOppositePoint(CoordinatePoint(x: 30, y: 40))
print(chrisPosition)


/**
 * ### 10.1.3 연산 프로퍼티
 * #### 10-5 메소드로 구현된 접근자와 설정자
 *
 */
