//
//  ArrayCountByExtensions.swift
//  
//
//  Created by R. Kukuh on 07/04/23.
//

import Foundation

public extension Array where Element: Hashable {
    func countBy() -> [Element: Int] {
        return reduce(into: [:]) { (counts, element) in
            counts[element, default: 0] += 1
        }
    }
    
    func countBy<T: Hashable>(_ transform: (Element) -> T) -> [T: Int] {
        return reduce(into: [:]) { (counts, element) in
            let key = transform(element)
            counts[key, default: 0] += 1
        }
    }
}
