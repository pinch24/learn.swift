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

//
//  main.swift
//  self-expression
//
//  Created by MK on 09/04/2018.
//  Copyright © 2018 RoughGears. All rights reserved.
//

import Foundation

let oneByOneQue: Array<String>
let stepByStep: Array<String>
let onceAtATime: Thread

let work = DispatchQueue(label: "Work Queue")

let semaphore = DispatchSemaphore(value: 1)

func setMyTask(task: String, step: Int) {
    
    work.async {
        
        for i in 1...step {
            
            semaphore.wait()
            
            print("\(task) Step: \(i)")
            
            sleep(1)
            
            semaphore.signal()
        }
    }
    
    return
}

func setTeamTask(task: String, step: Int) {
    
    work.sync {
        
        semaphore.wait()
        
        for i in 1...step {
            
            print("\(task) Step: \(i)")
            
            sleep(1)
        }
    }
    
    semaphore.signal()

    return
}

setMyTask(task: "PA", step: 2)
setTeamTask(task: "Sprint", step: 4)
setMyTask(task: "PB", step: 3)
setMyTask(task: "PC", step: 2)

sleep(24)
