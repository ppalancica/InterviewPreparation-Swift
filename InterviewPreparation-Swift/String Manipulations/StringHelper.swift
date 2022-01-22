//
//  StringHelper.swift
//  InterviewPreparation-Swift
//
//  Created by Pavel Palancica on 1/22/22.
//

import Cocoa

class StringHelper {
    
    class func condenseWhitespaces(input: String) -> String {
        if input == "" { return "" }
        
        var result = ""
        var whitespaceFound = false
        let array = Array(input)
        
        for character in array {
            if character == " " {
                if whitespaceFound { continue }
                whitespaceFound = true
            } else {
                whitespaceFound = false
            }
            
            result.append(character)
        }
        
        return result
    }
    
    class func runTests() {
        let word1 = "Pavel   Palancica"
        let word1Condensed = condenseWhitespaces(input: word1)
        print("\(word1) condensed:\n\(word1Condensed)")
    }

}
