//
//  ArraySumTests.swift
//  
//
//  Created by R. Kukuh on 26/03/23.
//

import XCTest
@testable import SwiftCollections

class ArraySumTests: XCTestCase {
    
    func testIntSum() {
        let intArray: [Int] = [1, 2, 3, 4, 5]
        XCTAssertEqual(intArray.sum(), 15, "The sum of the integer array should be 15")
    }
    
    func testDoubleSum() {
        let doubleArray: [Double] = [1.5, 2.5, 3.5, 4.5, 5.5]
        XCTAssertEqual(doubleArray.sum(), 17.5, "The sum of the double array should be 17.5")
    }
    
    func testEmptyArray() {
        let emptyArray: [Int] = []
        XCTAssertEqual(emptyArray.sum(), 0, "The sum of an empty array should be 0")
    }

    static var allTests = [
        ("testIntSum", testIntSum),
        ("testDoubleSum", testDoubleSum),
        ("testEmptyArray", testEmptyArray),
    ]
}
