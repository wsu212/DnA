//
//  BST.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/15/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

protocol BST {
    associatedtype Element: Comparable
    func insert(_ value: Element)
    func remove(_ value: Element)
    func find(_ value: Element) -> Bool
}
