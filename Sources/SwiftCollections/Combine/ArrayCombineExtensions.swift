//
//  ArrayCombineExtensions.swift
//  
//
//  Created by R. Kukuh on 01/04/23.
//

import Foundation

enum ArrayCombineError: Error, Equatable {
    case mismatchedSize
}

public extension Array {
    func combine<T>(with values: [T]) throws -> [Element: T] {
        guard count == values.count else {
            throw ArrayCombineError.mismatchedSize
        }
        
        var result: [Element: T] = [:]
        for (index, key) in enumerated() {
            result[key] = values[index]
        }
        
        return result
    }
}
