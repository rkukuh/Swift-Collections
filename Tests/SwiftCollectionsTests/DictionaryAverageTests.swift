//
//  DictionaryAverageTests.swift
//  
//
//  Created by R. Kukuh on 25/03/23.
//

import XCTest
@testable import SwiftCollections

class DictionaryAverageTests: XCTestCase {
    func testAverageOfEmptyDictionary() {
        let emptyDict: [String: Int] = [:]
        XCTAssertNil(emptyDict.average, "The average of an empty dictionary should be nil.")
    }
    
    func testAverageOfIntDictionary() {
        let intDict: [String: Int] = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
        XCTAssertEqual(intDict.average, 3.0, "The average of the values should be 3.0.")
    }
    
    func testAverageForKey() {
        let doubleDict: [String: [Double]] = [
            "foo": [10.5, 40.5],
            "bar": [10, 20],
            "keyX": [5, 6, 7, 8]
        ]
        
        XCTAssertEqual(doubleDict.average(forKey: "foo"), 25.5, "The average for 'foo' should be 25.5.")
        XCTAssertEqual(doubleDict.average(forKey: "bar"), 15, "The average for 'bar' should be 15.")
        XCTAssertEqual(doubleDict.average(forKey: "keyX"), 6.5, "The average for 'keyX' should be 6.5.")
        XCTAssertNil(doubleDict.average(forKey: "nonexistent"), "The average for a nonexistent key should be nil.")
    }
    
    func testAverages() {
        let doubleDict: [String: [Double]] = [
            "foo": [10.5, 40.5],
            "bar": [10, 20],
            "keyX": [5, 6, 7, 8]
        ]
        
        let expectedAverages: [String: Double] = [
            "foo": 25.5,
            "bar": 15,
            "keyX": 6.5
        ]
        
        XCTAssertEqual(doubleDict.averages(), expectedAverages, "The averages dictionary should match the expected values.")
    }
}
