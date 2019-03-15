//
//  Traversal.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

protocol Traversal {
    associatedtype Node
    func depthFirst(visit: (Node) -> Void)
    func levelOrder(visit: (Node) -> Void)
}
