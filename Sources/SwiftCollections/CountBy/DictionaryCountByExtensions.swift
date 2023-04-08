//
//  DictionaryCountByExtensions.swift
//  
//
//  Created by R. Kukuh on 08/04/23.
//

import Foundation

public extension Dictionary {
    func countBy<T: Hashable>(_ transform: (Key, Value) -> T) -> [T: Int] {
        return reduce(into: [:]) { (counts, keyValue) in
            let key = transform(keyValue.key, keyValue.value)
            counts[key, default: 0] += 1
        }
    }
}
