#if DEBUG
// MARK: - Foundation.NSString
open class NSString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
	open var length: Int { get {} }
	open func character(at index: Int) -> unichar
	public init()
	public init?(coder: NSCoder)
}
#endif

/**
 * ### 12.2.2 개방 접근수준 - open
 * open 접근수준은 클래스와 클래스의 멤버에서만 사용할 수 있다.
 * open 접근수준을 제외한 다른 모든 접근수준의 클래스는 그 클래스가 정의된 모듈 안에서만 상속할 수 있다.
 * open 접근수준을 제외한 다른 모든 접근수준의 클래스 멤버는 해당 멤버가 정의된 모듈 안에서만 재정의할 수 있다.
 * open 접근수준의 클래스는 그 클래스가 정의된 모듈 밖의 다른 모듈에서도 상속할 수 있다.
 * open 접근수준의 클래스 멤버는 해당 멤버가 정의된 모듈 밖의 다른 모듈에서도 재정의할 수 있다.
 *
 * 클래스를 open 접근수준으로 명시하는 것은 그 클래스를 **다른 모듈에서도 부모 클래스로 사용하겠다**는 **목적**으로 **클래스를 설계**하고 코드를 작성했음을 의미한다.
 *
 * #### 12-2 Foundation 프레임워크에 정의되어 있는 개방 접근수준의 NSString 클래스
 *
 */
