struct BasicInformation {
	let name: String
	var age: Int
}

var chrisInfo: BasicInformation = BasicInformation(name: "Chris", age: 78)
var friendInfo: BasicInformation = chrisInfo
chrisInfo.age = 45
print("Chris's age: \(chrisInfo.age)")
print("Friend's age: \(friendInfo.age)")
print()

class Person {
	var height: Float = 0.0
	var weight: Float = 0.0
}

var chris: Person = Person()
var friend: Person = chris
chris.height = 178.2
chris.weight = 72.4
print("Chris's height: \(chris.height)")
print("Friend's height: \(friend.height)")
print()

func changeBasicInfo(_ info: BasicInformation)
{
	var copiedInfo: BasicInformation = info
	copiedInfo.age = 39
}

func changePersonInfo(_ info: Person)
{
	info.height = 184.2
}

changeBasicInfo(chrisInfo)
print("Chris's age: \(chrisInfo.age)")

changePersonInfo(chris)
print("Chris's height: \(chris.height)")

/**
 * ## 9.3 구조체와 클래스의 차이
 * #### 9-6 값 타입과 참조 타입의 차이
 * #### 같은 점
 * - 프로퍼티와 메소드를 정의할 수 있다.
 * - 서브스크립를 정의할 수 있다.
 * - 이니셜라이저를 정의할 수 있다.
 * - 익스텐션을 통해 기능을 확장할 수 있다.
 * - 프로토콜로 기능을 지정할 수 있다.
 *
 * #### 다른 점
 * - 구조체는 상속할 수 없다.
 * - 타입캐스팅은 클래스의 인스턴스에만 허용된다.
 * - 디이니셜라이저는 클래스의 인스턴스에만 사용된다.
 * - 레퍼런스 카운팅은 클래스의 인스턴스에만 적용된다.
 *
 * #### 값 타입, 참조 타입
 * 구조체는 값 타입, 클래스는 참조 타입이다.
 * 값 타입은 전달될 값이 복사되어 전달된다.
 * 참조 타입은 참조 주소만 전달된다.
 * 함수의 전달 인자로 넘길 때도 변수와 상수에 할당될 때도 마찬가지다.
 *
 * 값 타입의 데이터를 전달하면 인스턴스가 새로 생성된다.
 * 참조 타입의 데이터를 전달하면 인스턴스의 참조만 전달하므로 같은 기존 데이터에 접근하게 된다.
 */
