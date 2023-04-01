//
//  ArrayCombineTests.swift
//  
//
//  Created by R. Kukuh on 01/04/23.
//

import XCTest
@testable import SwiftCollections

class ArrayCombineTests: XCTestCase {
    func testArrayCombine() {
        let keys = ["a", "b", "c", "d"]
        let values = [1, 2, 3, 4]
        
        let expectedResult: [String: Int] = ["a": 1, "b": 2, "c": 3, "d": 4]
        
        let result = try? keys.combine(with: values)
        XCTAssertEqual(result, expectedResult, "The combined dictionary should match the expected result.")
        
        let keysMismatched = ["a", "b", "c"]
        XCTAssertThrowsError(try keysMismatched.combine(with: values)) { error in
            XCTAssertEqual(error as? ArrayCombineError, .mismatchedSize, "The error should be a mismatchedSize error.")
        }
    }
    
    func testCombineMismatchedSize() {
        let keys = ["a", "b", "c"]
        let values = [1, 2]

        XCTAssertThrowsError(try keys.combine(with: values)) { error in
            XCTAssertEqual(error as? ArrayCombineError, ArrayCombineError.mismatchedSize)
        }
    }
}
