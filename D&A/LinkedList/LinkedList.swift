//
//  LinkedList.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    var isEmpty: Bool { return head == nil }
    
    func append(_ value: T) {
        let node = Node<T>(value: value)
        
        if isEmpty {
            head = node
        } else {
            tail?.next = node
            tail = tail?.next
        }
    }
    
    func node(at index: Int) -> Node<T>? {
        guard isEmpty == false else { return nil }
        var currentIndex = 0
        var currentNode = head
        
        while currentNode != nil && currentIndex < index  {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        return currentNode
    }
    
    func push(_ value: T) {
        let node = Node<T>(value: value)
        if isEmpty {
            head = node
        } else {
            node.next = head
            head = node
        }
    }
}
