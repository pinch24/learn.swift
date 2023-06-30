struct CoordinatePoint {
	var x: Int
	var y: Int
	
	var oppositePoint: CoordinatePoint {
		get {
			CoordinatePoint(x: -x, y: -y)
		}
		
		set {
			x = -newValue.x
			y = -newValue.y
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
 * #### 10-7 매개변수 이름을 생략한 설정자
 * get 메소드의 본문이 한 줄이고 결과값이 프로퍼티 타입과 같다면 return 키워드는 생략할 수 있다.
 * set 메소드의 매개변수를 지정하지 않으면 자동으로 newValue라는 이름을 사용하게 된다.
 */
