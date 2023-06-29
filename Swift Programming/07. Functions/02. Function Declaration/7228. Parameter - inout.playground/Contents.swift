var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ array: [Int]) {
	var copiedArray: [Int] = array
	copiedArray[1] = 1
}

func referencedParameter(_ array: inout [Int]) {
	array[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1])

referencedParameter(&numbers)
print(numbers[1])

/**
 * #### 입출력 매개변수
 * #### 7-9 inout 매개변수의 활용
 * 함수의 전달인자는 기본적으로 값을 복사해서 전달한다.
 * 값이 아닌 참조를 전달하려면 입출력 매개변수를 사용해야 한다.
 * 참조를 전달하면 함수 내에서 전달된 원래 데이터를 변경할 수 있다.
 *
 * 입출력 매개변수는 기본값을 가질 수 없다.
 * 가변 매개변수로 사용될 수 없다.
 * 상수는 변경할 수 없으므로 입출력 매개변수의 전달인자로 사용될 수 없다.
 *
 * 이 방법은 함수 외부에서 값에 영향을 미치는 행위이기 때문에 함수형 프로그래밍에서는 지양하는 패턴이다.
 * 그리고 잘못 사용하면 메모리 안전(Memory Safety)을 위협하기도 한다.
 */
