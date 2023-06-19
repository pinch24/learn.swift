import Foundation

var greeting = "Hello"
greeting.append(contentsOf: ", world.")
print(greeting)

var introduce = greeting
introduce += " It's "
introduce += "Rainy"
print(introduce, "/", introduce.count)

/**
 * ## 3.5 String
 * String은 문자열이다.
 */
