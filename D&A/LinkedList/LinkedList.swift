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
    
    func push(_ value: T) {
        let node = Node<T>(value: value)
        
        if isEmpty {
            head = node
        } else {
            node.next = head
            head = node
        }
    }
    
    func node(at index: Int) -> Node<T>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentIndex < index, currentNode != nil {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        return currentNode
    }
}

extension LinkedList: CustomStringConvertible {
    
    var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}

extension LinkedList: LinkedListChallenges {
    
    func reversed() -> LinkedList<T> {
        tail = head
        
        var previousNode = head
        var currentNode = head?.next
        previousNode?.next = nil
        
        while currentNode != nil {
            let nextNode = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
        }
        
        head = previousNode
        
        return self
    }
    
    func middleNode() -> Node<T>? {
        return nil
    }
}
