//
//  IntToRoman.swift
//  InterviewPreparation-Swift
//
//  Created by Pavel Palancica on 1/27/22.
//

import Cocoa

class IntToRoman: NSObject {

    class func romanNumber(_ num: Int) -> String {
        var n = num
        var result = ""

        let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
        let romanLiterals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];

        for i in 0..<values.count {
          while n >= values[i] {
            n = n - values[i]
            result = result + romanLiterals[i]
          }
        }

        return result
    }
    
    class func runTests() {
        let n = 2869
        let romanNumber = romanNumber(n)
        print("Roman represantation of \(n) is \(romanNumber)")
    }
}
