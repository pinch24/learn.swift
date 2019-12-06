import UIKit

var str = "Swift5 String"

// Init
let hello: String = "Hello"
let world: String = "world"
var greeting: String = hello + ", " + world + "!"
print(greeting)

// Is Same String
var isSameString: Bool = false
isSameString = hello == "Hello"
print(isSameString)

isSameString = hello == "hello"
print(isSameString)

// Has Prefix
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)

hasPrefix = hello.hasPrefix("HE")
print(hasPrefix)

hasPrefix = greeting.hasPrefix("Hello")
print(hasPrefix)

hasPrefix = world.hasPrefix("wo")
print(hasPrefix);

// Has Suffix
var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
print(hasSuffix)

hasSuffix = hello.hasSuffix("llo")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("world")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("world!")
print(hasSuffix)

hasSuffix = world.hasSuffix("ld")
print(hasSuffix)

// Convert String
var convertString: String = ""
convertString = hello.uppercased()
print(convertString)

convertString = hello.lowercased()
print(convertString)

convertString = greeting.uppercased()
print(convertString)

convertString = hello.lowercased()
print(convertString)

// Is Empty String
var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString)

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString)

print(greeting.count)
print(hello.count)
