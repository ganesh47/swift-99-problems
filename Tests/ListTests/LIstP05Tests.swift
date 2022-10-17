//
// Ensure lists are reversed gracefully
//

import XCTest

@testable import List

final class ListP05Tests: XCTestCase {

    func testP05ReverseList() throws {
        self.measure {
            XCTAssertEqual(List(1, 2, 3)?.reverse(), List(3,2,1), "Length should've been 3")
            XCTAssertEqual(List("1", "2", "3")?.reverse(), List("3","2","1"), "Length should've been 3")
            XCTAssertEqual(List("1")?.reverse(), List("1"), "Length should've been 3")
            XCTAssertEqual(List(1)?.reverse(), List(1), "Length should've been 3")
        }

    }

}
