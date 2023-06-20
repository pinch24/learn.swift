import Foundation

let names1: Array<String> = ["Alpha", "Bravo", "Charlie", "Delta"]
let names2: [String] = ["Echo", "Foxtrot", "Golf", "Hotel"]

print(names1[1 ... 3])
print(names2.count)

var emptyArray1: [Any] = Array<Any>()
var emptyArray2: [Any] = [Any]()
var emptyArray3: [Any] = []

print(emptyArray1.isEmpty)
print(emptyArray2.isEmpty)
print(emptyArray3.isEmpty)
