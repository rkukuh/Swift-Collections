//
//  ArrayChunkExtensions.swift
//  
//
//  Created by R. Kukuh on 25/03/23.
//

import Foundation

public extension Array {
    func chunked(by size: Int) -> [[Element]] {
        var result: [[Element]] = []
        var chunk: [Element] = []
        
        for item in self {
            chunk.append(item)
            if chunk.count == size {
                result.append(chunk)
                chunk = []
            }
        }
        
        if !chunk.isEmpty {
            result.append(chunk)
        }
        
        return result
    }
}
