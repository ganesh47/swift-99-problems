//
// Created by Ganesh Raman on 10/10/22.
//

import XCTest
@testable import List


final class ListP02Tests: XCTestCase {

    func testP02FindPenultimateElementOfAList() throws {
        self.measure {
            XCTAssertEqual(List(1)?.penultimate(), Optional.none, "Penultimate element should've been none for a single element list")
            XCTAssertEqual(List(1,2)?.penultimate(), Optional.some(1), "Penultimate element should've been 1 for 1,2")
            XCTAssertEqual(List("1","2","3")?.penultimate(), Optional.some("2"), "Penultimate element should've been '2' for '1','2','3'")
        }

    }
}
