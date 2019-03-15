//
//  Stack.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

protocol Stack {
    associatedtype Element
    var values: [Element] { get set }
    var isEmpty: Bool { get }
    func push(_ value: Element)
    func pop()
}
