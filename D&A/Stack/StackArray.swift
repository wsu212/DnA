//
//  StackArray.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

class StackArray<T>: Stack {

    var values: [T]
    
    var isEmpty: Bool {
        return self.values.isEmpty
    }

    init(values: [T]) {
        self.values = values
    }

    func push(_ value: T) {
        self.values.append(value)
    }

    func pop() {
        self.values.removeLast()
    }
}
