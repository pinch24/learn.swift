import UIKit

class A {
	var b: Int = 1
	
	func afterTwoSecPrint() {
		DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
			self?.b = 99
			print("b: \(self?.b ?? 0)")
		}
	}
	
	init() {
		print("메모리에 할당되었습니다.")
	}
	
	deinit {
		print("메모리에서 해제되었습니다.")
	}
}

var a: A? = A()

a?.afterTwoSecPrint()

a = nil
print("a에 nil을 할당한 시점")
