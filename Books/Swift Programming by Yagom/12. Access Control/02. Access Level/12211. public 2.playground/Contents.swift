#if DEBUG
// MARK: - Bool
@frozen public struct Bool : Sendable {

	public init()
	@inlinable public init(_ value: Bool)

	@inlinable public static func random<T>(using generator: inout T) -> Bool where T : RandomNumberGenerator
	@inlinable public static func random() -> Bool

	prefix public static func ! (a: Bool) -> Bool
	public static func && (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool
	public static func || (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool

	@inlinable public mutating func toggle()

	public static func != (lhs: Bool, rhs: Bool) -> Bool
}
#endif

/**
 * ## 12.2 접근수준
 * 접근제어는 접근수준 키워드를 통해 구현할 수 있다.
 * 각 타입(Class, Struct, Enum)에 특정 접근수준을 지정할 수 있고, 타입 내부의 프로퍼티, 메서드, 이니셜라이저, 서브스크립트 각각에도 접근 수준을 지정할 수 있다.
 * 접근수준을 지정할 수 있는 키워드는 open, public, internal, fileprivate, private 다섯 가지가 있다.
 * 이 중 open은 클래스에서만 사용된다.
 *
 * ### 12.2.1 공개 접근수준 - public
 * #### 12-1 스위프트 표준 라이브러리에 정의되어있는 Bool 타입
 * public 키워드로 접근수준이 지정된 요소는 어디서든 쓰일 수 있다.
 * public 접근수준은 주로 프레임워크에서 외부와 연결될 인터페이스를 구현하는데 많이 쓰인다.
 * 우리가 사용하는 스위프트의 기본 요소는 모두 public 접근수준으로 구현되어 있다.
 */
