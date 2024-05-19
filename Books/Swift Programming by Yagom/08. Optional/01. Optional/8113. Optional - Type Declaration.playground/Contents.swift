#if ERROR
@frozen public enum Optional<Wrapped> : ExpressibleByNilLiteral {
	case none
	case some(Wrapped)

	public init(_ some: Wrapped)

	@inlinable public func map<U>(_ transform: (Wrapped) throws -> U) rethrows -> U?
	@inlinable public func flatMap<U>(_ transform: (Wrapped) throws -> U?) rethrows -> U?
	
	public init(nilLiteral: ())

	// @inlinable public var unsafelyUnwrapped: Wrapped { get }

	public static func ~= (lhs: _OptionalNilComparisonType, rhs: Wrapped?) -> Bool
	public static func == (lhs: Wrapped?, rhs: _OptionalNilComparisonType) -> Bool
	public static func != (lhs: Wrapped?, rhs: _OptionalNilComparisonType) -> Bool
	public static func == (lhs: _OptionalNilComparisonType, rhs: Wrapped?) -> Bool
	public static func != (lhs: _OptionalNilComparisonType, rhs: Wrapped?) -> Bool
}
#endif

/**
 * 옵셔널은 제네릭이 적용된 열거형이다.
 * 옵셔널에 사용된 기술은 열거형, 제네릭, 모나드 등이 있다.
 *
 * 옵셔널은 값을 갖는 케이스 some과 그렇지 못한 케이스 none으로 정의되어 있다.
 * 값이 nil 일 때는 none 케이스가 되고, 값이 있으면 some 케이스에 연관 프로퍼티 Wrapped에 값이 할당된다.
 * 즉, 값이 옵셔널이라는 열거형에 래핑되어있는 타입이라는 의미다.
 */
