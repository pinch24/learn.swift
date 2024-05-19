internal class InternalClass {}
private struct PrivateStruct {}

#if DEBUG
public var publicTuple: (first: InternalClass, second: PrivateStruct) = (InternalClass(), PrivateStruct())
// publicTuple이 public이기 때문에 internal인 InternalClass와 private인 PrivateStruct를 사용할 수 없다.
#endif
private var privateTuple: (first: InternalClass, second: PrivateStruct) = (InternalClass(), PrivateStruct())
// privateTuple은 private이기 때문에 internal인 InternalClass와 private인 PrivateStruct를 사용할 수 있다.

/**
 * #### 12-5 튜플의 접근수준 부여
 * 튜플의 내부 요소 타입은 튜플의 접근수준 보다 같거나 높아야 한다.
 */
