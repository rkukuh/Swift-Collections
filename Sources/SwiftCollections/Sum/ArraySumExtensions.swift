//
//  ArraySumExtensions.swift
//  
//
//  Created by R. Kukuh on 26/03/23.
//

import Foundation

public extension Array where Element: Numeric {
    func sum() -> Element {
        return reduce(0, +)
    }
}
