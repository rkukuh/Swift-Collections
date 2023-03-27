//
//  ArrayCollapseExtensions.swift
//  
//
//  Created by R. Kukuh on 27/03/23.
//

import Foundation

public extension Array where Element: Collection, Element.Element: Any {
    func collapse() -> [Element.Element] {
        return reduce([], { (result, elements) in
            return result + elements
        })
    }
}
