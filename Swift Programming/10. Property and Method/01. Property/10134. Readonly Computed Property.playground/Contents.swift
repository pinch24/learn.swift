struct CoordinatePoint {
	var x: Int
	var y: Int
	
	var oppositePoint: CoordinatePoint {
		get {
			CoordinatePoint(x: -x, y: -y)
		}
	}
}

var chrisPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)
print(chrisPosition)
print(chrisPosition.oppositePoint)
print(chrisPosition)
print()

#if ERROR
chrisPosition.oppositePoint = CoordinatePoint(x: 30, y: 40)
print(chrisPosition)
#endif

/**
 * ### 10.1.3 연산 프로퍼티
 * #### 10-8 읽기 전용 연산 프로퍼티
 */
