//
//  BinaryTree.swift
//  InterviewPreparation-Swift
//
//  Created by Pavel Palancica on 2/21/22.
//

import Foundation

class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(data: Int) {
        self.data = data
    }
    
    func insert(item: Int) {
        if item <= data {
            if left == nil {
                left = Node(data: item)
            } else {
                left?.insert(item: item)
            }
        } else {
            if right == nil {
                right = Node(data: item)
            } else {
                right?.insert(item: item)
            }
        }
    }
    
    func contains(item: Int) -> Bool {
        if item == data {
            return true
        } else if item < data {
            if left == nil {
                return false
            } else {
                return left!.contains(item: item)
            }
        } else {
            if right == nil {
                return false
            } else {
                return right!.contains(item: item)
            }
        }
    }
    
    func containsV2(item: Int) -> Bool {
        if item == data {
            return true
        } else if item < data {
            if let leftNode = left {
                return leftNode.contains(item: item)
            } else {
                return false
            }
        } else {
            if let rightNode = right {
                return rightNode.contains(item: item)
            } else {
                return false
            }
        }
    }
    
    func printInOrder() {
        if left != nil {
            left?.printInOrder()
        }
        print(data)
        if right != nil {
            right?.printInOrder()
        }
    }
}

class BinartTree {
    
}
