//
//  QueueArray.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/14/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

class QueueArray<T>: Queue {
    
    var values: [T]
    var peek: T? { return self.values.first }
    
    init(values: [T]) {
        self.values = values
    }
    
    func enqueue(_ value: T) {
        self.values.append(value)
    }
    
    func dequeue() {
        guard self.values.isEmpty == false else { return }
        self.values.removeFirst()
    }
}
