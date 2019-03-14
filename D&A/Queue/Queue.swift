//
//  Queue.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

protocol Queue {
    associatedtype Element
    var values: [Element] { get set }
    var peek: Element? { get }
    func enqueue(_ value: Element)
    func dequeue()
}
