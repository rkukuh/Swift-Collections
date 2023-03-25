//
//  DictionaryAverageExtension.swift
//  
//
//  Created by R. Kukuh on 25/03/23.
//

import Foundation

public extension Dictionary where Value: Numeric {
    var average: Double? {
        guard !isEmpty else {
            return nil
        }
        
        let sum = reduce(0) { (result, keyValue) -> Double in
            return result + Double(truncating: keyValue.value as! NSNumber)
        }
        
        return sum / Double(count)
    }
}

public extension Dictionary where Value == [Double] {
    func average(forKey key: Key) -> Double? {
        guard let values = self[key], !values.isEmpty else {
            return nil
        }
        
        let sum = values.reduce(0, +)
        
        return sum / Double(values.count)
    }
}

public extension Dictionary where Key == String, Value == [Double] {
    func averages() -> [String: Double] {
        var result: [String: Double] = [:]
        
        for (key, values) in self {
            guard !values.isEmpty else {
                continue
            }
            
            let sum = values.reduce(0, +)
            let average = sum / Double(values.count)
            
            result[key] = average
        }
        
        return result
    }
}
