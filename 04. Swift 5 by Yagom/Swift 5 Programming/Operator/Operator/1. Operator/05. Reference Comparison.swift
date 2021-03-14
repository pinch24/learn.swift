/**
5.1.3 비교(comparison) 연산자
참조 비교 연산자는 스위프트의 유일한 참조(reference) 타입인 클래스의 인스턴스에서만 사용할 수 있다.
*/
import Foundation

func exec_5105() {
	
	let valueA: Int = 3
	let valueB: Int = 5
	let valueC: Int = 5
	
	let isSameValueAB: Bool = valueA == valueB
	let isSameValueBC: Bool = valueB == valueC
	print(isSameValueAB)
	print(isSameValueBC)
	
	let referenceA: NSDate = NSDate()
	let referenceB: NSDate = NSDate()
	let referenceC: NSDate = referenceA
	
	let isSameReferenceAB: Bool = referenceA === referenceB
	let isSameReferenceAC: Bool = referenceA === referenceC
	print(isSameReferenceAB)
	print(isSameReferenceAC)
}
