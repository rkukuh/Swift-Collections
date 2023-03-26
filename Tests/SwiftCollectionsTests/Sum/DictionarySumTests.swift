//
//  DictionarySumTests.swift
//  
//
//  Created by R. Kukuh on 26/03/23.
//

import XCTest
@testable import SwiftCollections

class DictionarySumTests: XCTestCase {
    
    func testSum() {
        let dictionary: [String: Int] = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
        XCTAssertEqual(dictionary.sum(), 15, "The sum of the dictionary values should be 15")
    }
    
    func testSumForKey() {
        let doubleDict: [String: [Double]] = [
            "foo": [10.5, 40.5],
            "bar": [10, 20]
        ]
        
        XCTAssertEqual(doubleDict.sum(forKey: "foo"), 51, "The sum for key 'foo' should be 51")
        XCTAssertNil(doubleDict.sum(forKey: "nonexistent"), "The sum for non-existent key should be nil")
    }
    
    func testSumAll() {
        let doubleDict: [String: [Double]] = [
            "foo": [10.5, 40.5],
            "bar": [10, 20],
            "x": [5, 6, 7, 8],
            "y": [4.5, 3.25, 9]
        ]
        
        let sums = doubleDict.sumAll()
        XCTAssertEqual(sums["foo"], 51, "The sum for key 'foo' should be 51")
        XCTAssertEqual(sums["bar"], 30, "The sum for key 'bar' should be 30")
        XCTAssertEqual(sums["x"], 26, "The sum for key 'x' should be 26")
        XCTAssertEqual(sums["y"], 16.75, "The sum for key 'y' should be 16.75")
    }

    static var allTests = [
        ("testSum", testSum),
        ("testSumForKey", testSumForKey),
        ("testSumAll", testSumAll),
    ]
}
