//
//  FindNthToLast.swift
//  InterviewPreparation-Swift
//
//  Created by Pavel Palancica on 1/23/22.
//

import Foundation

class FindNthToLast {
    
    class func getNodeNthToLast(head: LinkedListNode?, n: Int) -> LinkedListNode? {
        var current = head
        var follower = head
        
        for _ in 0..<n {
            if current == nil { return nil }
            current = current!.next
        }
        
        guard current != nil else { return nil }
        
        while current?.next != nil {
            current = current!.next
            follower = follower!.next
        }
        
        return follower
    }
    
    class func runTests() {
        let node1 = LinkedListNode(data: 1)
        let node2 = LinkedListNode(data: 2)
        let node3 = LinkedListNode(data: 3)
        let node4 = LinkedListNode(data: 4)
        let node5 = LinkedListNode(data: 5)
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node5
        
        var nodeData = ""
        
        let firstToLast = getNodeNthToLast(head: node1, n: 1)
        if let firstToLastData = firstToLast?.data {
            nodeData = String(firstToLastData)
        } else {
            nodeData = "nil"
        }
        print("firstToLast: \(nodeData)")
        
        let secondToLast = getNodeNthToLast(head: node1, n: 2)
        if let secondToLastData = secondToLast?.data {
            nodeData = String(secondToLastData)
        } else {
            nodeData = "nil"
        }
        print("secondToLast: \(nodeData)")
        
        let fifthToLast = getNodeNthToLast(head: node1, n: 5)
        if let fifthToLastData = fifthToLast?.data {
            nodeData = String(fifthToLastData)
        } else {
            nodeData = "nil"
        }
        print("fifthToLast: \(nodeData)")
    }
}
