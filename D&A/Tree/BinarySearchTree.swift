//
//  BinarySearchTree.swift
//  D&A
//
//  Created by Wei-Lun Su on 3/15/19.
//  Copyright © 2019 Wei-Lun Su. All rights reserved.
//

import Foundation

class BinarySearchTree<T: Comparable>: BST {
    
    private(set) var root: BinaryNode<T>?
    
    init(root: BinaryNode<T>?) {
        self.root = root
    }
    
    func insert(_ value: T) {
        root = insert(from: root, value: value)
    }
    
    func remove(_ value: T) {
        root = remove(node: root, value: value)
    }
    
    func find(_ value: T) -> Bool {
        var currentNode = root
        
        while let node = currentNode {
            if node.value == value {
                return true
            }
            
            if value < node.value {
                currentNode = node.left
            } else {
                currentNode = node.right
            }
        }
        
        return false
    }
    
    // MARK: - Private Helper Methods
    
    private func insert(from node: BinaryNode<T>?, value: T) -> BinaryNode<T> {
        
        guard let node = node else {
            return BinaryNode<T>(value: value)
        }
        
        if value < node.value {
            node.left = insert(from: node.left, value: value)
        } else {
            node.right = insert(from: node.right, value: value)
        }
        
        return node
    }
    
    private func remove(node: BinaryNode<T>?, value: T) -> BinaryNode<T>? {
        guard let node = node else { return nil }
        
        if node.value == value {
            
            if node.left == nil && node.right == nil {
                return nil
            }
            
            if node.left == nil {
                return node.right
            }
            
            if node.right == nil {
                return node.left
            }
            
            if let value = node.right?.min.value {
                node.value = value
                node.right = remove(node: node.right, value: value)
            }
            
        } else if value < node.value {
            node.left = remove(node: node.left, value: value)
        } else {
            node.right = remove(node: node.right, value: value)
        }
        
        return node
    }
}
