//
//  DictionarySumExtensions.swift
//  
//
//  Created by R. Kukuh on 26/03/23.
//

import Foundation

public extension Dictionary where Value: Numeric {
    func sum() -> Value {
        return reduce(0) { (result, keyValue) -> Value in
            return result + keyValue.value
        }
    }
}

public extension Dictionary where Value: Collection, Value.Element: Numeric {
    func sum(forKey key: Key) -> Value.Element? {
        guard let values = self[key], !values.isEmpty else {
            return nil
        }
        
        let sum = values.reduce(0) { (result, value) -> Value.Element in
            return result + value
        }
        return sum
    }

    func sumAll() -> [Key: Value.Element] {
        var result: [Key: Value.Element] = [:]

        for (key, values) in self {
            let sum = values.reduce(0) { (result, value) -> Value.Element in
                return result + value
            }
            result[key] = sum
        }

        return result
    }
}
