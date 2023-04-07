//
//  SetCountByTests.swift
//  
//
//  Created by R. Kukuh on 08/04/23.
//

import Foundation

import XCTest

class SetCountByClosureTests: XCTestCase {
    func testSetCountByClosure() {
        let emails: Set = ["alice@gmail.com", "bob@yahoo.com", "carlos@gmail.com"]
        
        let countByResult = emails.countBy { (email) -> String in
            return (email as! String).components(separatedBy: "@").last ?? ""
        }
        
        XCTAssertEqual(countByResult["gmail.com"], 2, "The count for 'gmail.com' should be 2")
        XCTAssertEqual(countByResult["yahoo.com"], 1, "The count for 'yahoo.com' should be 1")
    }
}
