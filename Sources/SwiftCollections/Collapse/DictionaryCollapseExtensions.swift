//
//  DictionaryCollapseExtensions.swift
//  
//
//  Created by R. Kukuh on 27/03/23.
//

import Foundation

public extension Dictionary where Value: Sequence {
    func collapse() -> [Value.Element] {
        return values.flatMap { $0 }
    }
}
