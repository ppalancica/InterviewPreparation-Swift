//
//  BinarySearch.swift
//  InterviewPreparation-Swift
//
//  Created by Pavel Palancica on 2/27/22.
//

import Foundation

class BinarySearch {
    class func binarySearchRecursive(array: [Int], n: Int, left: Int, right: Int) -> Bool {
        if left > right { return false }
        
        let mid = left + ((right - left) / 2) // (left + right) / 2
        
        if array[mid] == n {
            return true
        } else if n < array[mid] {
            return binarySearchRecursive(array: array, n: n, left: left, right: mid - 1)
        } else {
            return binarySearchRecursive(array: array, n: n, left: mid + 1, right: right)
        }
    }
    
    class func runTests() {
        let array = [2, 4, 6, 8, 10, 12, 14, 16]
        let n1 = 4
        let n2 = 11
        let arraySearchResult1 = binarySearchRecursive(array: array, n: n1, left: 0, right: array.count - 1)
        let arraySearchResult2 = binarySearchRecursive(array: array, n: n2, left: 0, right: array.count - 1)
        
        if arraySearchResult1 {
            print("\(array) contains \(n1)")
        } else {
            print("\(array) does not contain \(n1)")
        }
        
        if arraySearchResult2 {
            print("\(array) contains \(n2)")
        } else {
            print("\(array) does not contain \(n2)")
        }
    }
}
