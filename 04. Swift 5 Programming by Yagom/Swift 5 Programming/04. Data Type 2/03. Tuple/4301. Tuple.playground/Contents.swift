import Foundation

typealias PersonTuple = (name: String, age: Int, height: Double)

var person: PersonTuple = ("John", 18, 182.4)
print("Name: \(person.name), Age: \(person.age), Height: \(person.height)")

person.age = 19
person.2 = 184.2
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")
