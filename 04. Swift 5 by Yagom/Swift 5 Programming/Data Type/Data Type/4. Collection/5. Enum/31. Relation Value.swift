/**
4.5.3 연관 값
4-20. 연관 값을 갖는 열거형
열거형 내의 항목(case)은 자신과 연관된 값을 가질 수 있다.
*/
import Foundation

fileprivate enum MainDish {
	case pasta(taste: String)
	case pizza(dough: String, topping: String)
	case chicken(withSauce: Bool)
	case rice
}

func exec_4531() {
	
	var dinner = MainDish.pasta(taste: "Cream")
	print(dinner)

	dinner = .pizza(dough: "CheeseCrust", topping: "Bacon")
	print(dinner)

	dinner = .chicken(withSauce: true)
	print(dinner)

	dinner = .rice
	print(dinner)
}
