/**
5.1.1 할당(assign) 연산자
값을 할당할 때 사용하는 연산자이다. 타입이 다른 데이터를 할당하면 오류가 발생한다.
*/
import Foundation

func exec_5101() {
	
	let a: Int = 4
	let b: Double = Double(a)
	
	print("\(b) <-- \(a)")
}
