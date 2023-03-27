//
//  File.swift
//  
//
//  Created by R. Kukuh on 27/03/23.
//

import XCTest
@testable import SwiftCollections

class ArrayCollapseTests: XCTestCase {
    func testCollapseIntArray() {
        let nestedArray: [[Int]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        let collapsedArray = nestedArray.collapse()
        XCTAssertEqual(collapsedArray, [1, 2, 3, 4, 5, 6, 7, 8, 9], "The collapsed array should match the expected array.")
    }
    
    func testCollapseMixedArray() {
        let mixedNestedArray: [[Any]] = [["A", "B"], [1, 2, 3], ["C", "D"]]
        let mixedCollapsedArray = mixedNestedArray.collapse()
        XCTAssertEqual(mixedCollapsedArray.count, 7, "The count of the collapsed array should be 7.")
        XCTAssertTrue(mixedCollapsedArray.contains { $0 as? String == "A" }, "The collapsed array should contain \"A\".")
        XCTAssertTrue(mixedCollapsedArray.contains { $0 as? Int == 1 }, "The collapsed array should contain 1.")
    }
}
