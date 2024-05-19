class AClass {
	static var typeProperty: Int = 0
	
	static var typeComputedProperty: Int {
		get {
			return typeProperty
		}
		
		set {
			typeProperty = newValue
		}
	}
	
	var instanceProperty: Int = 0 {
		didSet {
			Self.typeProperty += instanceProperty
		}
	}
}

AClass.typeProperty = 123
print(AClass.typeProperty, AClass.typeComputedProperty, separator: ", ", terminator: "\n\n")

let instance1: AClass = AClass()
instance1.instanceProperty = 100
print(instance1.instanceProperty)
print(AClass.typeProperty, AClass.typeComputedProperty, separator: ", ", terminator: "\n\n")

let instance2: AClass = AClass()
instance2.instanceProperty = 200
print(instance2.instanceProperty)
print(AClass.typeProperty, AClass.typeComputedProperty, separator: ", ", terminator: "\n\n")

/**
 * ### 10.1.6 타입 프로퍼티
 * #### 10-12 타입 프로퍼티와 인스턴스 프로퍼티
 * 각각 인스턴스가 아닌 타입 자체에 속하는 프로토콜을 타입 프로퍼티라고 한다.
 * 타입 프로퍼티는 타입 자체에 영향을 미치는 프로퍼티이다.
 * 인스턴스의 생성 여부와 상관없이 타입 프로퍼티의 값은 하나이며, 그 타입의 모든 인스턴스가 공통으로 사용하는 값, 모든 인스턴스에서 공용으로 접근하고 삾을 변경할 수 있는 변수 등을 정의할 때 유용하다.
 *
 * 저장 타입 프로퍼티는 변수와 상수로 선언할 수 있다.
 * 저장 타입 프로퍼티는 반드시 초기값을 설정해야 하며 지연 연산된다.
 * 지연 연산이 되어도 lazy 키워드로 표시하지 않는다.
 * 다중 스레드 환경에서도 단 한 번만 초기화된다.
 *
 * 연산 프로퍼티는 변수로만 선언할 수 있다.
 */
