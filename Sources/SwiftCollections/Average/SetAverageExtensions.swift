//
//  SetAverageExtensions.swift
//  
//
//  Created by R. Kukuh on 25/03/23.
//

import Foundation

public extension Set where Element: Numeric {
    var average: Double? {
        guard !isEmpty else {
            return nil
        }
        
        let sum = reduce(0) { (result, element) -> Double in
            return result + Double(truncating: element as! NSNumber)
        }
        
        return sum / Double(count)
    }
}

