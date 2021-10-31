import Foundation

var person: (String, Int, Double) = ("John", 18, 182.4)
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")

person.1 = 19
person.2 = 184.2
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")
