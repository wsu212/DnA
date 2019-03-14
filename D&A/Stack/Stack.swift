//
//  Stack.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

class Stack<T> {
    
    var values: [T]
    
    init(values: [T]) {
        self.values = values
    }
    
    func push(_ value: T) {
        self.values.append(value)
    }
    
    func pop() {
        self.values.removeLast()
    }
    
    func isEmpty() -> Bool {
        return self.values.isEmpty
    }
}
