var name1: String = "Chris"
print(name1)

//name1 = nil		// Error!
//print(name1)

var name2: String? = "Lattner"
print(name2)

name2 = nil
print(name2)

var name3: Optional<String> = "Swift"
print(name3)

/**
 * ## 8.1 옵셔널의 사용
 * #### 8-2 옵셔널 변수의 선언 및 nil 할당
 * nil은 옵셔널 타입에만 사용될 수 있다.
 *
 * 데이터 타입 뒤에 ?를 붙이면 옵셔널 타입이 된다.
 * Optional<Type> 처럼 명확하게 타입을 지정할 수도 있지만 굳이 긴 표현을 사용하지는 않는다.
 *
 * 옵셔널은 '값이 없을 수도 있다(nil)'는 의미로 쓰이지만,
 * 파라메터에는 '값이 없어도 된다'는 의미로도 쓰인다.
 */
