//
//  TreeNode.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

struct TreeNode<T> {
    var value: T
    var children: [TreeNode]
    
    init(value: T, children: [TreeNode]) {
        self.value = value
        self.children = children
    }
    
    mutating func add(_ child: TreeNode) {
        children.append(child)
    }
}

extension TreeNode: Traversal {
    
    func depthFirst(visit: (TreeNode) -> Void) {
        //
    }
    
    func levelOrder(visit: (TreeNode) -> Void) {
        //
    }
}
