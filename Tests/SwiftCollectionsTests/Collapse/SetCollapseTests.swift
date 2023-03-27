//
//  SetCollapseTests.swift
//  
//
//  Created by R. Kukuh on 27/03/23.
//

import XCTest
@testable import SwiftCollections

class SetCollapseTests: XCTestCase {
    func testCollapseIntSet() {
        let nestedIntSets: Set<Set<Int>> = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]
        
        let collapsedIntSet = nestedIntSets.collapse()
        let expectedCollapsedIntSet: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        
        XCTAssertEqual(collapsedIntSet, expectedCollapsedIntSet, "The collapsed set should have all the integers from the nested sets.")
    }
}
