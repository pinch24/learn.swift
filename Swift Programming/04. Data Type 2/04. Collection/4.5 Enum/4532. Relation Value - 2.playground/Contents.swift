fileprivate enum PastaTaste { case cream, tomato }
fileprivate enum PizzaDough { case cheesecrust, thin, original }
fileprivate enum PizzaTopping { case pepperoni, cheese, bacon }

fileprivate enum MainDish {
	case pasta(taste: PastaTaste)
	case pizza(dough: PizzaDough, topping: PizzaTopping)
	case chicken(withSauce: Bool)
	case rice
}

fileprivate var dinner = MainDish.pasta(taste: PastaTaste.tomato)
print(dinner)

dinner = .pizza(dough: PizzaDough.cheesecrust, topping: PizzaTopping.bacon)
print(dinner)

dinner = .chicken(withSauce: true)
print(dinner)

dinner = .rice
print(dinner)

/**
 * ### 4.5.3 연관 값
 * 4-21. 여러 열거형의 응용
 * 연관 값을 열거형으로 선언하면 지정할 수 있는 값을 한정할 수 있다.
 */
