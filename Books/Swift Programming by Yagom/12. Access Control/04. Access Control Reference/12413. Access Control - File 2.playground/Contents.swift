class AClass {
	func internalMethod() {}
    fileprivate func filePrivateMethod() {}
    var internalProperty = 0
    fileprivate var filePrivateProperty = 0
}

let aInstance: AClass = AClass()
aInstance.internalMethod()
aInstance.filePrivateMethod()           // AClass가 다른 파일로 구성되어있다면 접근 불가
aInstance.internalProperty = 1
aInstance.filePrivateProperty = 1       // AClass가 다른 파일로 구성되어있다면 접근 불가

/**
 * #### 12-6 접근수준에 따른 접근 결과
 * 프레임워크를 만들 때는 다른 모듈에서 특정 기능에 접근할 수 있도록 API로 사용될 기능을 public으로 지정해주어야 한다.
 * 내부 구현은 internal, fileprivate, private로 적절히 설정하면 된다.
 */
