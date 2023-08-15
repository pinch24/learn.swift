open class OpenClass {
	open var openProperty: Int = 0
	public var publicProperty: Int = 0
	internal var internalProperty: Int = 0
	fileprivate var fileprivateProperty: Int = 0
	private var privateProperty: Int = 0
	
	open func openMethod() {}
	public func publicMethod() {}
	internal func internalMethod() {}
	fileprivate func fileprivateMethod() {}
	private func privateMethod() {}
}

public class PublicClass {}
public struct PublicStruct {}
public enum PublicEnum {}
public var publicVarible = 0
public let publicConstant = 0
public func publicFunction() {}

internal class InternalClass {}
internal struct InternalStruct {}
internal enum InternalEnum {}
internal var internalVarible = 0
internal let internalConstant = 0
internal func internalFunction() {}

fileprivate class FileprivateClass {}
fileprivate struct FileprivateStruct {}
fileprivate enum FileprivateEnum {}
fileprivate var fileprivateVarible = 0
fileprivate let fileprivateConstant = 0
fileprivate func fileprivateFunction() {}

private class PrivateClass {}
private struct PrivateStruct {}
private enum PrivateEnum {}
private var privateVarible = 0
private let privateConstant = 0
private func privateFunction() {}

/**
 * ### 12.3 접근제어 구현
 * 접근제어는 접근수준을 지정해서 구현할 수 있다.
 * internal은 기본 접근수준이므로 생략이 가능하다.
 *
 * #### 12-3 접근수준을 명기한 각 요소들의 예
 */
