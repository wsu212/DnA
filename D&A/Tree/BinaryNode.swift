//
//  BinaryNode.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

class BinaryNode<T> {
    var value: T
    var left: BinaryNode?
    var right: BinaryNode?
    
    var min: BinaryNode { return left?.min ?? self }
    
    init(value: T) {
        self.value = value
    }
}

extension BinaryNode: BinaryTraversal {
    
    func inOrder(visit: (BinaryNode) -> Void) {
        left?.inOrder(visit: visit)
        visit(self)
        right?.inOrder(visit: visit)
    }
    
    func preOrder(visit: (BinaryNode) -> Void) {
        visit(self)
        left?.preOrder(visit: visit)
        right?.preOrder(visit: visit)
    }
    
    func postOrder(visit: (BinaryNode) -> Void) {
        left?.postOrder(visit: visit)
        right?.postOrder(visit: visit)
        visit(self)
    }
}
