print("Comment Description")

/**
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
