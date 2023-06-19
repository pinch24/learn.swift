import Foundation

var names: Set<String> = ["Alpha", "Bravo", "Charlie", "Delta"]
print(names)

names.insert("Echo")
print(names)

names.insert("Alpha")
print(names)

names.insert("Delta")
print(names)
