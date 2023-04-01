//
//  SetCombineExtensions.swift
//  
//
//  Created by R. Kukuh on 01/04/23.
//

import Foundation


public enum SetCombineError: Error {
    case mismatchedSize
}

public extension Set {
    func combine<T, U>(with other: Set<U>) throws -> [T: U] where Element == T {
        guard count == other.count else {
            throw SetCombineError.mismatchedSize
        }
        
        var result: [T: U] = [:]
        
        var otherIterator = other.makeIterator()
        for item in self {
            if let key = item as? T, let value = otherIterator.next() {
                result[key] = value
            }
        }
        
        return result
    }
}
