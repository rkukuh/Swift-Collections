//
//  DictionaryCountByTests.swift
//  
//
//  Created by R. Kukuh on 08/04/23.
//

import XCTest
@testable import SwiftCollections

class DictionaryCountByClosureTests: XCTestCase {
    func testDictionaryCountByClosure() {
        let userAges = ["Alice": 30, "Bob": 28, "Carlos": 30, "David": 28]
        let countByResult = userAges.countBy { (name, age) -> Int in
            return age
        }
        
        XCTAssertEqual(countByResult[30], 2, "The count for age '30' should be 2")
        XCTAssertEqual(countByResult[28], 2, "The count for age '28' should be 2")
    }
}
