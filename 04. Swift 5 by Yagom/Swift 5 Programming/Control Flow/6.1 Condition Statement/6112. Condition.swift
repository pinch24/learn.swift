/**
#### 6-2-1 if 구문의 다양한 구현
*/
import Foundation

func exec_6112() {
	
	let first: Int = 5
	let second: Int = 5
	var biggerValue: Int = 0
	
	if first > second {
		
		biggerValue = first
	}
	else if first == second {
		
		biggerValue = first
	}
	else if first < second {
		
		biggerValue = second
	}
	else if first == 5 {
		
		biggerValue = 100
	}
	
	print(biggerValue)
}
