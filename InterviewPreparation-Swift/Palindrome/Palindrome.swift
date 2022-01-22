//
//  Palindrome.swift
//  InterviewPreparation-Swift
//
//  Created by Pavel Palancica on 1/22/22.
//

import Foundation

class Palindrome {
    
    class func isPalindrome(input: String) -> Bool {
        let s = input.lowercased()
        let array = Array(s)
        
        for i in 0..<array.count / 2 {
            if array[i] != array[array.count - 1 - i] {
                return false
            }
        }

//        for i in 0..<string.count / 2 {
//            if string[i] != string[string.count - 1 - i] {
//                return false
//            }
//        }
        
        return true
    }
    
    class func runTests() {
        let word1 = "Rotator"
        let statement1 = isPalindrome(input: word1) ? "is" : "is not"
        print("\(word1) \(statement1) Palindrome")
        let word2 = "programming"
        let statement2 = isPalindrome(input: word2) ? "is" : "is not"
        print("\(word2) \(statement2) Palindrome")
    }

}
