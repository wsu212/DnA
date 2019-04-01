//
//  Graph.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/31/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

protocol Graph {
    associatedtype Element
    func createVertex(data: Element) -> Vertex<Element>
    
    func addDirectEdge(from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double?)
    func addUndirectedEdge(between source: Vertex<Element>, and destination: Vertex<Element>, weight: Double?)
    func add(_ type: EdgeType, from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double?)
    
    func edges(from source: Vertex<Element>) -> [Edge<Element>]
    func weight(from source: Vertex<Element>, to destination: Vertex<Element>) -> Double?
}
