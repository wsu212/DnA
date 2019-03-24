//
//  Node.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}
