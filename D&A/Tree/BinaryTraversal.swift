//
//  BinaryTraversal.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

protocol BinaryTraversal {
    associatedtype Node
    func inOrder(visit: (Node) -> Void)
    func preOrder(visit: (Node) -> Void)
    func postOrder(visit: (Node) -> Void)
}
