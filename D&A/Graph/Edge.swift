//
//  Edge.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/31/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

struct Edge<T> {
    let source: Vertex<T>
    let destination: Vertex<T>
    let weight: Double?
}
