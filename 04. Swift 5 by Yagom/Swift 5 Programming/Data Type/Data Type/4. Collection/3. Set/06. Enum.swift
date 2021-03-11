/**
컬렉션에서 임의의 요소룰 추출하는 randomElement() 메서드와 컬렉션 요소를 임의로 뒤섞는 shuffle() 메서드가 있다.
*/
import Foundation

func exec_4305() {
	
	let array = Array<Int>(1 ... 10)
	print(array)
	print(array.randomElement())
	print(array.shuffled())
	print(array)
}
