//
// Ensure lists are reversed gracefully
//

import XCTest

@testable import List

final class ListP05Tests: XCTestCase {

    func testP05ReverseList() throws {
        self.measure {
            XCTAssertEqual(List(1, 2, 3)?.reverse(), List(3, 2, 1), "Should've been reversed to 3,2,1")
            XCTAssertEqual(List(1, 2, 3, 4)?.reverse(), List(4, 3, 2, 1), "Should've been reversed to 4,3,2,1")
            XCTAssertEqual(List("1", "2", "3")?.reverse(), List("3", "2", "1"), "Should've been reversed to 3,2,1 as string")
            XCTAssertEqual(List("1")?.reverse(), List("1"), "Should've been the same list")
            XCTAssertEqual(List(1)?.reverse(), List(1), "Should've been the same list")
        }

    }

}
