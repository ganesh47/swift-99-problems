//
// Using preconditions in index method, can't use negative assertions on index-out-bounds or negative indices
//

import XCTest

@testable import List

final class ListP03Tests: XCTestCase {

    func testP03FindKthElementOfAList() throws {
        self.measure {
            XCTAssertEqual(List(1)?.at(0), 1, "0th Element should've been 1")
            XCTAssertEqual(List(1, 2, 3)?.at(0), 1, "0th Element should've been 1")
            XCTAssertEqual(List(1, 2, 3)?.at(1), 2, "1st Element should've been 2")
            XCTAssertEqual(List(1, 2, 3)?.at(2), 3, "2nd Element should've been 3")
            XCTAssertEqual(List("1", "2", "3")?.at(2), "3", "2nd Element should've been 3 as string")
            XCTAssertEqual(List("1", "2", "3")?.at(20), nil, "20th Element should've been nil")
        }

    }

}
