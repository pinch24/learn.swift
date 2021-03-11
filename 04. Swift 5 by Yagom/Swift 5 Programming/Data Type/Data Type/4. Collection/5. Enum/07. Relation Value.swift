/**
열거형 내의 항목(case)은 자신과 연관된 값을 가질 수 있다.
*/
import Foundation

fileprivate enum MainDish {
	case pasta(taste: String)
	case pizza(dough: String, topping: String)
	case chicken(withSauce: Bool)
	case rice
}

func exec_4507() {
	
	var dinner = MainDish.pasta(taste: "Cream")
	print(dinner)

	dinner = .pizza(dough: "CheeseCrust", topping: "Bacon")
	print(dinner)

	dinner = .chicken(withSauce: true)
	print(dinner)

	dinner = .rice
	print(dinner)
}
