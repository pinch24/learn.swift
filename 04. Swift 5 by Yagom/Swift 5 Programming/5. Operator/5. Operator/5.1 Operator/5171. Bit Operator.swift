/**
### 5.1.7 비트 연산자
값의 비트 논리 연산을 위한 연산자이다.
*/
import Foundation

func exec_5171() {
	
	let a = 4
	let b = 2
	
	print(String(a, radix: 2))
	print(String(~a, radix: 2))
	print()
	
	print(String(a, radix: 2), String(b, radix: 2))
	print(String(a & b, radix: 2))
	print(String(a | b, radix: 2))
	print(String(a ^ b, radix: 2))
	print(String(a >> b, radix: 2))
	print(String(a << b, radix: 2))
}
