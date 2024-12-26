struct CoordinatePoint {
	var x: Int
	var y: Int
	
	var oppositePoint: CoordinatePoint {
		get {
			return CoordinatePoint(x: -x, y: -y)
		}
		
		set(opposite) {
			x = -opposite.x
			y = -opposite.y
		}
	}
}

var chrisPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)
print(chrisPosition)
print(chrisPosition.oppositePoint)
print(chrisPosition)
print()

chrisPosition.oppositePoint = CoordinatePoint(x: 30, y: 40)
print(chrisPosition)


/**
 * ### 10.1.3 연산 프로퍼티
 * #### 10-6 연산 프로퍼티의 정의와 사용
 * 연산 프로퍼티를 사용하면 하나의 프로퍼티에 접근자(Accessor)와 설정자(Mutator)를 모두 지정할 수 있고 역할도 좀 더 명확하게 표현할 수 있다.
 * 접근자 메소드로 get, 설정자 메소드로 set을 사용한다.
 * set 메소드의 매개변수를 지정하지 않으면 자동으로 newValue라는 이름을 사용하게 된다.
 */
