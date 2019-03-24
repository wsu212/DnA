//
//  LinkedListChallenges.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/21/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

protocol LinkedListChallenges {
    associatedtype Element
    
    /// function that reverses a linked list
    func reversed() -> LinkedList<Element>
    
    /// function that prints out the elements of a linked list in reverse order
    //func reverse(action: () -> Void)
    
    /// function that returns the middle node of a linked list
    func middleNode() -> Node<Element>?
}
