/**
### 4.4.1 배열
**배열(Array)**은 같은 타입의 데이터를 일렬로 나열한 형태의 컬렉션 타입이다.
배열을 사용할 때는 Array 키워드와 타입 이름의 조합으로 사용한다.
*/
import Foundation

func exec_4411() {
	
	let names1: Array<String> = ["Alpha", "Bravo", "Charlie", "Delta"]
	let names2: [String] = ["Echo", "Foxtrot", "Golf", "Hotel"]
	
	var emptyArray1: [Any] = Array<Any>()
	var emptyArray2: [Any] = [Any]()
	var emptyArray3: [Any] = []
	
	print(names1[1 ... 3])
	print(names2.count)
	
	print(emptyArray1.isEmpty)
	print(emptyArray2.isEmpty)
	print(emptyArray3.isEmpty)
}
