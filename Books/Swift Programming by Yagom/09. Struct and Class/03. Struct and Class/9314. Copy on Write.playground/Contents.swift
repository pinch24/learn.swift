import Foundation

func address(of object: UnsafeRawPointer) -> String{
	let address = Int(bitPattern: object)
	return String(format: "%p", address)
}

var array = [1, 2, 3, 4]
var copiedArray = array
print("array's address: \(address(of: &array))")
print("copiedArray's address: \(address(of: &copiedArray))")
print()

copiedArray[0] = 0
print("array's address: \(address(of: &array))")
print("copiedArray's address: \(address(of: &copiedArray))")
print()

struct BasicInformation {
	let name: String
	var age: Int
}

var chrisInfo: BasicInformation = BasicInformation(name: "Chris", age: 78)
var friendInfo: BasicInformation = chrisInfo
print("Chris's address: \(address(of: &chrisInfo))")
print("Friend's address: \(address(of: &friendInfo))")
print()

/**
 * #### Copy on Write
 * Array, Dictionary, Set과 같은 컬렉션 타입에 대해서 스위프트는 꼭 필요한 경우에만 '진짜 복사'를 실행한다.
 * 컴파일러가 판단해서 꼭 복사를 해야 할 필요가 없을 경우 배열과 딕셔너리 같이 요소를 많이 갖는 컬렉션 타입을 함수의 인자로 전달한다고 해서 값을 모두 메모리의 다른 공간에 복사하지 않는다.
 * 이것을 Copy on Write, 쓰기가 발생할 때 복사, 즉 변경이 있을 때 복사를 수행한다.
 */
