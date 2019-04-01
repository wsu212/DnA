//
//  AdjacencyList.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/31/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

class AdjacencyList<T: Hashable>: Graph {
    
    private var adjacencies: [Vertex<T>: [Edge<T>]] = [:]
    
    func createVertex(data: T) -> Vertex<T> {
        let vertex = Vertex<T>(index: adjacencies.count, value: data)
        adjacencies[vertex] = []
        return vertex
    }
    
    func addDirectEdge(from source: Vertex<T>, to destination: Vertex<T>, weight: Double?) {
        let edge = Edge<T>(source: source,
                           destination: destination,
                           weight: weight)
        
        adjacencies[source]?.append(edge)
    }
    
    func addUndirectedEdge(between source: Vertex<T>, and destination: Vertex<T>, weight: Double?) {
        addDirectEdge(from: source, to: destination, weight: weight)
        addDirectEdge(from: destination, to: source, weight: weight)
    }
    
    func add(_ type: EdgeType, from source: Vertex<T>, to destination: Vertex<T>, weight: Double?) {
        switch type {
        case .directed:
            addDirectEdge(from: source, to: destination, weight: weight)
        case .undirected:
            addUndirectedEdge(between: source, and: destination, weight: weight)
        }
    }
    
    func edges(from source: Vertex<T>) -> [Edge<T>] {
        return adjacencies[source] ?? []
    }
    
    func weight(from source: Vertex<T>, to destination: Vertex<T>) -> Double? {
        return edges(from: source)
            .first { $0.destination == destination }?
            .weight
    }
}
