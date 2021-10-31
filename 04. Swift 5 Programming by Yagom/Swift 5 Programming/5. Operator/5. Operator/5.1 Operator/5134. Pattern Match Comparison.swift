import Foundation

func exec_5134() {
	
	print(isLowcase(s: "a"))
	print(isLowcase(s: "A"))
	print(isLowcase(s: "aA"))
	print(isLowcase(s: "Aa"))
}

func isLowcase(s: String) -> Bool {
	
	var b = true
	
	for c in s {
		
		if "a" ... "z" ~= c {
			
			continue
		}
		else {
			
			b = false
			break
		}
	}
	
	return b
}

/**
### 5.1.3 비교(comparison) 연산자
패턴 매치 연산자는 문자열을 비교하는데도 사용할 수 있다.
*/
