//
//  SetCountByExtensions.swift
//  
//
//  Created by R. Kukuh on 08/04/23.
//

import Foundation

public extension Set {
    func countBy<T: Hashable>(_ transform: (Element) -> T) -> [T: Int] {
        return reduce(into: [:]) { (counts, element) in
            let key = transform(element)
            counts[key, default: 0] += 1
        }
    }
}
