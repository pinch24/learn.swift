internal class InternalClass {}
private struct PrivateStruct {}

#if DEBUG
public var publicTuple: (first: InternalClass, second: PrivateStruct) = (InternalClass(), PrivateStruct())
#endif
private var privateTuple: (first: InternalClass, second: PrivateStruct) = (InternalClass(), PrivateStruct())

/**
 * #### 12-5 튜플의 접근수준 부여
 * 튜플의 내부 요소 타입은 튜플의 접근수준 보다 같거나 높아야 한다.
 */
