//
//  File.swift
//  
//
//  Created by R. Kukuh on 25/03/23.
//

import XCTest

class SetAverageTests: XCTestCase {
    func testAverageOfEmptySet() {
        let emptySet: Set<Int> = []
        XCTAssertNil(emptySet.average, "The average of an empty set should be nil.")
    }
    
    func testAverageOfIntSet() {
        let intSet: Set<Int> = [1, 2, 3, 4, 5]
        XCTAssertEqual(intSet.average, 3.0, "The average of [1, 2, 3, 4, 5] should be 3.0.")
    }
    
    func testAverageOfDoubleSet() {
        let doubleSet: Set<Double> = [1.5, 2.5, 3.5, 4.5, 5.5]
        XCTAssertEqual(doubleSet.average, 3.5, "The average of [1.5, 2.5, 3.5, 4.5, 5.5] should be 3.5.")
    }
}
