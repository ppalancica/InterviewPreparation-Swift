//
//  BubbleSort.swift
//  InterviewPreparation-Swift
//
//  Created by Pavel Palancica on 3/1/22.
//

import Foundation

class BubbleSort {
    class func sorted(array: [Int]) -> [Int] {
        var a = array
        var sorted = false
        var lastUnsorted = a.count - 1
        
        while !sorted {
            sorted = true
            for i in 0..<lastUnsorted {
                if a[i] > a[i + 1] {
                    sorted = false
                    let temp = a[i]
                    a[i] = a[i + 1]
                    a[i + 1] = temp
                }
            }
            lastUnsorted -= 1
        }
        
        return a
    }
    
    class func runTests() {
        let array = [10, 8, 9, 7, 6, 5, 1, 4, 2, 3]
        let sortedArray = sorted(array: array)
        print("Sorted array: \(sortedArray)")
    }
}
