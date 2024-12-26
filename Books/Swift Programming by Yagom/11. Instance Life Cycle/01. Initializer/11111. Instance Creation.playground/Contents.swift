class SomeClass {
	init() {
		// ...
	}
}

struct SomeStruct {
	init() {
		// ...
	}
}

enum SomeEnum {
	case someCase
	
	init() {
		self = .someCase
	}
}

let someClass = SomeClass()
let someStruct = SomeStruct()
let someEnum = SomeEnum()

print(someClass)
print(someStruct)
print(someEnum)

/**
 * ## 11.1 인스턴스 생성
 * #### 11-1 클래스, 구조체, 열거형의 기본적인 형태의 이니셜라이저
 * 초기화 과정은 새로운 인스턴스를 사용할 준비를 하기위해 저장 프로퍼티의 초기값을 설정하는 기능을 수행한다.
 * 이니셜라이저를 정의하면 초기화 과정을 직접 구현할 수 있다.
 * 이니셜라이저에는 반환값이 없다. 이니셜라이저의 역할은 그저 인스턴스의 첫 사용을 위해 초기화하는 것 뿐이다.
 *
 * 이니셜라이저는 해당 타입의 새로운 인스턴스를 생성하기 위해 호출된다.
 * 이니셜라이저는 init 키워드를 사용하여 이니셜라이저 메소드임을 나타낸다.
 *
 * 이니셜라이저는 클래스, 구조체, 열거형 타입의 구현부에 정의할 수 있다.
 * 구조체, 열거형 타입은 익스텐션에도 정의할 수 있다.
 */
