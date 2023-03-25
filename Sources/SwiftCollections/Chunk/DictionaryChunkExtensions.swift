//
//  DictionaryChunkExtensions.swift
//  
//
//  Created by R. Kukuh on 26/03/23.
//

import Foundation

public extension Dictionary {
    func chunked(by size: Int) -> [[(Key, Value)]] {
        var result: [[(Key, Value)]] = []
        var chunk: [(Key, Value)] = []
        
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
