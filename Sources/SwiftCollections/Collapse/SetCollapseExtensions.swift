//
//  SetCollapseExtensions.swift
//  
//
//  Created by R. Kukuh on 27/03/23.
//

import Foundation

public extension Set {
    func collapse<T>() -> Set<T> where Element == Set<T> {
        return reduce(Set<T>()) { (result, element) -> Set<T> in
            return result.union(element)
        }
    }
}
