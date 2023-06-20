import Foundation

fileprivate enum PastaTaste: CaseIterable { case cream, tomato }
fileprivate enum PizzaDough: CaseIterable { case cheesecrust, thin, original }
fileprivate enum PizzaTopping: CaseIterable { case pepperoni, cheese, bacon }

fileprivate enum MainDish: CaseIterable {
	
	case pasta(taste: PastaTaste)
	case pizza(dough: PizzaDough, topping: PizzaTopping)
	case chicken(withSauce: Bool)
	case rice
	
	static var allCases: [MainDish] {
		return PastaTaste.allCases.map(MainDish.pasta)
			+ PizzaDough.allCases.reduce([]) { (result, dough) -> [MainDish] in
				result + PizzaTopping.allCases.map { (topping) -> MainDish in
					MainDish.pizza(dough: dough, topping: topping)
				}
			}
			+ [true, false].map(MainDish.chicken)
			+ [MainDish.rice]
	}
}

print(MainDish.allCases.count)
print(MainDish.allCases)

/**
 14
 [
   MainDish.pasta(taste: PastaTaste.cream),
   MainDish.pasta(taste: PastaTaste.tomato),
 
   MainDish.pizza(dough: PizzaDough.cheesecrust, topping: PizzaTopping.pepperoni),
   MainDish.pizza(dough: PizzaDough.cheesecrust, topping: PizzaTopping.cheese),
   MainDish.pizza(dough: PizzaDough.cheesecrust, topping: PizzaTopping.bacon),
   MainDish.pizza(dough: PizzaDough.thin, topping: PizzaTopping.pepperoni),
   MainDish.pizza(dough: PizzaDough.thin, topping: PizzaTopping.cheese),
   MainDish.pizza(dough: PizzaDough.thin, topping: PizzaTopping.bacon),
   MainDish.pizza(dough: PizzaDough.original, topping: PizzaTopping.pepperoni),
   MainDish.pizza(dough: PizzaDough.original, topping: PizzaTopping.cheese),
   MainDish.pizza(dough: PizzaDough.original, topping: PizzaTopping.bacon),
 
   MainDish.chicken(withSauce: true),
   MainDish.chicken(withSauce: false),
 
   MainDish.rice
 ]
 */

/**
 * ### 4.5.4 항목 순회
 * #### 4-25. 연관 값을 갖는 열거형의 항목 순회
 * 열거형의 케이스가 연관 값을 갖는 경우 allCases를 재정의해야 한다.
*/
