import Cocoa

var value: Any = "Hello, world."
print(value)

value = 1
print(value)

value = false
print(value)

/**
 * ## 3.6 Any, AnyObject and nil
 * **Any**는 스위프트의 모든 데이터 타입을 사용할 수 있다는 뜻이다. 데이터 타입이 Any로 지정되어 있다면 변수와 상수에 어떤 종류의 데이터 타입이든지 할당할 수 있다.
 * **AnyObject**는 클래스의 타입에 상관없이 인스턴스를 할당할 수 있다.
 * Any와 AnyObject는 될 수 있으면 사용하지 않는 편이 좋다. Any와 AnyObject로 선언된 변수를 쓰려면 매번 타입 확인 및 변환을 해줘야 해서 불편하고 타입이 맞지 않을 경우 오류를 발생시키기 때문이다. 타입은 될 수 있는 한 명시하는 것이 좋다.
 * **nil**은 '없음'을 나타내는 스위프트 키워드이다.
 * 값이 nil 인 변수와 상수에 접근하면 잘못된 메모리 접근으로 런타임 오류가 발생한다. 이를 **Null Point Exception**이라고 한다.
 */
