//
//  File.swift
//  
//
//  Created by R. Kukuh on 01/04/23.
//

import XCTest
@testable import SwiftCollections

class SetCombineTests: XCTestCase {
    func testSetCombine() {
        let keys: Set = ["a", "b", "c", "d"]
        let values: Set = [1, 2, 3, 4]
        
        if let result = try? keys.combine(with: values) {
            XCTAssertTrue(Set(result.keys) == keys, "The combined Set keys should match the original keys.")
            XCTAssertTrue(Set(result.values) == values, "The combined Set values should match the original values.")
        } else {
            XCTFail("The combine method should not throw an error.")
        }
        
        let keysMismatched: Set = ["a", "b", "c"]
        
        XCTAssertThrowsError(try keysMismatched.combine(with: values)) { error in
            XCTAssertEqual(error as? SetCombineError, .mismatchedSize, "The error should be a mismatchedSize error.")
        }
    }
}
