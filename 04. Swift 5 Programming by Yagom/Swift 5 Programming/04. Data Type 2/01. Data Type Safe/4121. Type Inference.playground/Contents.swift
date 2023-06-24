let string = "Hello, World."
let value = 100

print(string)
print(value)
print()

print(type(of: string))
print(type(of: value))
print()

/**
 * ## 4.1 데이터 타입 안심
 * 스위프트는 타입에 굉장히 민감하고 엄격한 언어이다. 스위프트에서 서로 다른 타입으로의 데이터 교환은 반드시 타입캐스팅(**Type-casting**, 형 변환)을 거쳐야 한다.
 * ### 4.1.1 데이터 타입 안심이란
 * 스위프트는 데이터 타입을 안심하고 사용할 수 있는(**Type-safe**) 언어이다. 타입을 안심하고 사용할 수 있다는 말은 그만큼 실수를 줄일 수 있다는 의미다. 타입 오류는 일일이 확인하기도 힘들다. 그렇지만 스위프트는 컴파일 오류로 알려주므로 서로 다른 타입의 값을 할당하는 실수를 줄일 수 있다. 이렇게 스위프트가 컴파일 시 타입 확인하는 것으로 런타임 오류를 피할 수 있다.
 */
