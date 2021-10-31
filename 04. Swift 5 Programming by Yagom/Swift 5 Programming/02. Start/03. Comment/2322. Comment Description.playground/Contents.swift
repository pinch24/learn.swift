import Foundation

print("Comment Description")

/**
 2.3.2 마크업 문법을 활용한 문서화 주석
 
 # Greeting
 
 ## Unordered Lists

 - Lists are great,
 - but perhaps don't nest;
 - Sub-list formatting...

   - ...isn't the best.

 ## Ordered Lists

 1. Ordered lists, too,
 2. for things that are sorted;
 3. Arabic numerals
 4. are the only kind supported.
 
 - Parameter recipient: The person being greeted.
 
 - Throws: `MyError.invalidRecipient`
           if `recipient` is "Derek"
           (he knows what he did).
 
 - Returns: A new string saying hello to `recipient`.
 */
func greeting(to recipient: String) throws -> String {
    
    guard recipient != "Derek" else {
        //throw MyError.invalidRecipient
        return ""
    }

    return "Greetings, \(recipient)!"
}

/**
 https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode\_markup\_formatting\_ref/
 */
