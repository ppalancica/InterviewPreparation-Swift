//
//  NumberHelper.swift
//  InterviewPreparation-Swift
//
//  Created by Pavel Palancica on 1/22/22.
//

import Foundation

class NumberHelper {
    
    class func numberOfOnesInBinary(input: Int) -> Int {
        var number = input
        var result = 0
        
        while number > 0 {
            result += number & 1
            number >>= 1
        }
        
        return result
    }

    class func runTests() {
        let number1 = 250 // 0b11111010
        print("Number of ones in binary: \(numberOfOnesInBinary(input: number1))")
    }
}
