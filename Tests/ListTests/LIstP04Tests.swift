//
// Ensure length works across types of elements
//

import XCTest

@testable import List

final class ListP04Tests: XCTestCase {

    func testP04FindLengthOfAList() throws {
        self.measure {
            XCTAssertEqual(List(1, 2, 3)?.length(), 3, "Length should've been 3")
            XCTAssertEqual(List(1)?.length(), 1, "Length should've been 1")
            XCTAssertEqual(List("1")?.length(), 1, "Length should've been 1")
            XCTAssertEqual(List("1","2")?.length(), 2, "Length should've been 3")

        }

    }

}
