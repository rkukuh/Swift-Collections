//
//  ArrayAverageTests.swift
//  
//
//  Created by R. Kukuh on 25/03/23.
//

import XCTest
@testable import SwiftCollections

class ArrayAverageTests: XCTestCase {
    func testAverageOfEmptyArray() {
        let emptyArray: [Int] = []
        XCTAssertNil(emptyArray.average, "The average of an empty array should be nil.")
    }
    
    func testAverageOfIntArray() {
        let intArray: [Int] = [1, 2, 3, 4, 5]
        XCTAssertEqual(intArray.average, 3.0, "The average of [1, 2, 3, 4, 5] should be 3.0.")
    }
    
    func testAverageOfDoubleArray() {
        let doubleArray: [Double] = [1.5, 2.5, 3.5, 4.5, 5.5]
        XCTAssertEqual(doubleArray.average, 3.5, "The average of [1.5, 2.5, 3.5, 4.5, 5.5] should be 3.5.")
    }
}
