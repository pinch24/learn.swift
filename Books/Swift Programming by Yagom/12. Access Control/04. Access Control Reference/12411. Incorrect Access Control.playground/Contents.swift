private class AClass {
	public func someMethod() {
		// AClass가 private이기 때문에 someMethod가 public이어도 private으로 취급된다.
	}
}

#if DEBUG
public func someFunction(a: AClass) -> AClass {
	// someFunction이 public여서 private인 AClass를 파라메터나 리턴 타입으로 사용할 수 없다.
	return a
}
#endif

/**
 * ### 12.4 접근제어 구현 참고사항
 * 모든 타입에 적용되는 접근수준의 규칙은 **'상위 요소보다 하위 요소가 더 높은 접근수준을 가질 수 없다'**이다.
 * 비공개 접근수준으로 정의한 구조체의 프로퍼티로 비공개 이상의 공개수준을 갖은 프로퍼티를 정의할 수 없다.
 * 함수의 매개변수로 접근수준이 부여된 타입이 전달되거나 반환되면 그 타입의 접근수준보다 함수의 접근수준이 높게 설정될 수 없다.
 *
 * #### 12-4 잘못된 접근수준 부여
 */
