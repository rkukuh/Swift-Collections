//
//  ArrayChunkTests.swift
//  
//
//  Created by R. Kukuh on 25/03/23.
//

import Foundation

import XCTest
@testable import SwiftCollections

class ArrayChunkTests: XCTestCase {
    func testChunkedEmptyArray() {
        let emptyArray: [Int] = []
        let chunkedEmptyArray = emptyArray.chunked(by: 3)
        XCTAssertTrue(chunkedEmptyArray.isEmpty, "The chunked array of an empty array should be empty.")
    }
    
    func testChunkedArray() {
        let array: [Int] = [1, 2, 3, 4, 5, 6, 7]
        let chunkedArray = array.chunked(by: 4)
        let expectedChunks: [[Int]] = [
            [1, 2, 3, 4],
            [5, 6, 7]
        ]
        XCTAssertEqual(chunkedArray, expectedChunks, "The chunked array should match the expected chunks.")
    }
    
    func testChunkedArrayWithSizeLargerThanArray() {
        let array: [Int] = [1, 2, 3, 4, 5, 6, 7]
        let chunkedArray = array.chunked(by: 10)
        let expectedChunks: [[Int]] = [
            [1, 2, 3, 4, 5, 6, 7]
        ]
        XCTAssertEqual(chunkedArray, expectedChunks, "The chunked array should match the expected chunks.")
    }
    
    func testChunkedArrayWithSizeOne() {
        let array: [Int] = [1, 2, 3, 4, 5, 6, 7]
        let chunkedArray = array.chunked(by: 1)
        let expectedChunks: [[Int]] = [
            [1], [2], [3], [4], [5], [6], [7]
        ]
        XCTAssertEqual(chunkedArray, expectedChunks, "The chunked array should match the expected chunks.")
    }
}
