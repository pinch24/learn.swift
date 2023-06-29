import Cocoa

var greeting = "Hello, world."
var message = "Swift Playground."

print(greeting, message)
print(greeting, message, separator: "|")
print()

print(greeting, terminator: "/")
print(message, terminator: "/")
print()

print(greeting, message, terminator: "/")
print(greeting, message, separator: "|", terminator: "/")
print()
