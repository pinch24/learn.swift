struct Point {
	var x: Double = 0.0
	var y: Double = 0.0
}

struct Size {
	var width: Double = 0.0
	var height: Double = 0.0
}

let point: Point = Point(x: 0, y: 0)
let size: Size = Size(width: 50.0, height: 50.0)
print(point)
print(size)
print()

let somePoint: Point = Point()
let someSize: Size = Size()
print(somePoint)
print(someSize)
print()

let anotherPoint: Point = Point(y: 100)
let anotherSize: Size = Size(height: 200)
print(anotherPoint)
print(anotherSize)
print()

/**
 * ### 11.1.5 기본 이니셜라이저와 멤버와이즈 이니셜라이저
 * #### 11-7 멤버와이즈 이니셜라이저의 사용
 * 사용자 정의 이니셜라이저를 정의해주지 않으면 클래스나 구조체는 모든 프로퍼티에 기본값이 지정되어 있다는 전제하에 기본 이니셜라이저를 사용한다.
 * 기본 이니셜라이저는 프로퍼티 기본값으로 프로포티를 초기화해서 인스턴스를 생성한다.
 * 즉, 기본 이니셜라이저는 저장 프로퍼티의 기본값이 모두 지정되어 있고, 동시에 사용자 정의 이니셜라이저가 정의되어 있지 않은 상태에서 제공된다.
 *
 * 저장 프로퍼티를 선언할 때 기본값을 지정해주지 않으면 이니셜라이저에서 초기값을 설정해야 한다.
 * 구조체는 사용자 정의 이니셜라이저를 구현하지 않으면 프로퍼티의 이름으로 매개변수를 갖는 이니셜라이저인 멤버와이즈 이니셜라이저를 기본으로 제공한다.
 * 클래스는 멤버와이즈 이니셜라이저를 지원하지 않는다.
 */
