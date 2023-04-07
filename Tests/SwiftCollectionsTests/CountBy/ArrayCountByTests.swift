//
//  ArrayCountByTests.swift
//  
//
//  Created by R. Kukuh on 07/04/23.
//

import XCTest
@testable import SwiftCollections

class ArrayCountByTests: XCTestCase {
    func testArrayCountBy() {
        let array = ["apple", "banana", "apple", "orange", "banana", "apple"]
        let countByResult = array.countBy()
        
        XCTAssertEqual(countByResult["apple"], 3, "The count for 'apple' should be 3")
        XCTAssertEqual(countByResult["banana"], 2, "The count for 'banana' should be 2")
        XCTAssertEqual(countByResult["orange"], 1, "The count for 'orange' should be 1")
    }
    
    func testArrayCountByClosure() {
        let emails = ["alice@gmail.com", "bob@yahoo.com", "carlos@gmail.com"]
        let countByResult = emails.countBy { (email) -> String in
            return email.components(separatedBy: "@").last ?? ""
        }
        
        XCTAssertEqual(countByResult["gmail.com"], 2, "The count for 'gmail.com' should be 2")
        XCTAssertEqual(countByResult["yahoo.com"], 1, "The count for 'yahoo.com' should be 1")
    }
}
