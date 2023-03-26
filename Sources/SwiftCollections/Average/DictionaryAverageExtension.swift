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

public extension Dictionary where Value: Collection, Value.Element: BinaryFloatingPoint {
    func average(forKey key: Key) -> Value.Element? {
        guard let values = self[key], !values.isEmpty else {
            return nil
        }

        let sum = values.reduce(0, +)
        return sum / Value.Element(values.count)
    }
}

public extension Dictionary where Key == String, Value: Collection, Value.Element: BinaryFloatingPoint {
    func averages() -> [String: Value.Element] {
        var result: [String: Value.Element] = [:]

        for (key, values) in self {
            guard !values.isEmpty else {
                continue
            }

            let sum = values.reduce(0, +)
            let average = sum / Value.Element(values.count)

            result[key] = average
        }

        return result
    }
}

public extension Dictionary where Value: Collection, Value.Element: BinaryInteger {
    func average(forKey key: Key) -> Double? {
        guard let values = self[key], !values.isEmpty else {
            return nil
        }

        let sum = values.reduce(0, +)
        return Double(sum) / Double(values.count)
    }
}

public extension Dictionary where Key == String, Value: Collection, Value.Element: BinaryInteger {
    func averages() -> [String: Double] {
        var result: [String: Double] = [:]

        for (key, values) in self {
            guard !values.isEmpty else {
                continue
            }

            let sum = values.reduce(0, +)
            let average = Double(sum) / Double(values.count)

            result[key] = average
        }

        return result
    }
}
