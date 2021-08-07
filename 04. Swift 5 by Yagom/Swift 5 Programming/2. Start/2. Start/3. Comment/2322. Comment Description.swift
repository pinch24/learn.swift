/**
### 2.3.2 마크업 문법을 활용한 문서화 주석
*/

import Foundation

/// 마크업 문법을 활용한 문서화 주석
func exec_2322() {
    
    print("Markdown")
}

/**
 Creates a personalized greeting for a recipient.

 - Parameter recipient: The person being greeted.

 - Throws: `MyError.invalidRecipient`
           if `recipient` is "Derek"
           (he knows what he did).

 - Returns: A new string saying hello to `recipient`.
 */
func greeting(to recipient: String) throws -> String {
    
    guard recipient != "Derek" else {
        throw MyError.invalidRecipient
    }

    return "Greetings, \(recipient)!"
}

/**
    # Lists

    You can apply *italic*, **bold**, or `code` inline styles.

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
*/
