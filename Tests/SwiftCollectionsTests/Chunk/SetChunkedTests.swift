//
//  SetChunkedTests.swift
//  
//
//  Created by R. Kukuh on 26/03/23.
//

import XCTest
@testable import SwiftCollections

class SetChunkedTests: XCTestCase {
    func testChunkedEmptySet() {
        let emptySet: Set<Int> = []
        let chunkedEmptySet = emptySet.chunked(by: 3)
        XCTAssertTrue(chunkedEmptySet.isEmpty, "The chunked array of an empty set should be empty.")
    }
    
    func testChunkedSet() {
        let set: Set<Int> = [1, 2, 3, 4, 5, 6, 7]
        let chunkedSet = set.chunked(by: 4)
        let expectedChunks = [
            Set([1, 2, 3, 4]),
            Set([5, 6, 7])
        ]
        XCTAssertEqual(chunkedSet.map(Set.init), expectedChunks, "The chunked array should match the expected chunks.")
    }
    
    func testChunkedSetWithSizeLargerThanSet() {
        let set: Set<Int> = [1, 2, 3, 4, 5, 6, 7]
        let chunkedSet = set.chunked(by: 10)
        let expectedChunks: [Set<Int>] = [
            Set([1, 2, 3, 4, 5, 6, 7])
        ]
        XCTAssertEqual(chunkedSet.map(Set.init), expectedChunks, "The chunked array should match the expected chunks.")
    }
    
    func testChunkedSetWithSizeOne() {
        let set: Set<Int> = [1, 2, 3, 4, 5, 6, 7]
        let chunkedSet = set.chunked(by: 1)
        let expectedChunks: [Set<Int>] = [
            Set([1]), Set([2]), Set([3]), Set([4]), Set([5]), Set([6]), Set([7])
        ]
        XCTAssertEqual(chunkedSet.map(Set.init), expectedChunks, "The chunked array should match the expected chunks.")
    }
}
