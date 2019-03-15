//
//  BinaryTraversal.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

protocol BinaryTraversal {
    associatedtype Element
    func inOrder(visit: (Element) -> Void)
    func preOrder(visit: (Element) -> Void)
    func postOrder(visit: (Element) -> Void)
}
