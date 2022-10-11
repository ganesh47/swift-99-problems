//
// Created by Ganesh Raman on 10/10/22.
//

import XCTest
@testable import List

final class ListP01Tests: XCTestCase {

    func testP01FindLastElementOfAList() throws {
        self.measure {
            XCTAssertEqual(List(1)?.last(), 1, "Last element should've been 1")
            XCTAssertEqual(List(1, 2, 3)?.last(), 3, "Last element should've been 3")
            XCTAssertEqual(List("1", "2", "3")?.last(), "3", "Last element should've been 3")
        }


    }
}
