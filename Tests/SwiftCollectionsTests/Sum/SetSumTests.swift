//
//  SetSumTests.swift
//  
//
//  Created by R. Kukuh on 26/03/23.
//

import XCTest
@testable import SwiftCollections

class SetSumTests: XCTestCase {
    
    func testIntSum() {
        let intSet: Set<Int> = [1, 2, 3, 4, 5]
        XCTAssertEqual(intSet.sum(), 15, "The sum of the integer set should be 15")
    }
    
    func testDoubleSum() {
        let doubleSet: Set<Double> = [1.5, 2.5, 3.5, 4.5, 5.5]
        XCTAssertEqual(doubleSet.sum(), 17.5, "The sum of the double set should be 17.5")
    }
    
    func testEmptySet() {
        let emptySet: Set<Int> = []
        XCTAssertEqual(emptySet.sum(), 0, "The sum of an empty set should be 0")
    }

    static var allTests = [
        ("testIntSum", testIntSum),
        ("testDoubleSum", testDoubleSum),
        ("testEmptySet", testEmptySet),
    ]
}
