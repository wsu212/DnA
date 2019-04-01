//
//  Vertex.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/31/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

struct Vertex<T> {
    let index: Int
    let value: T
}

extension Vertex: Hashable where T: Hashable {}
extension Vertex: Equatable where T: Equatable {}
