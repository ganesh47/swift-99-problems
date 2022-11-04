//
// Ensure lists are reversed gracefully
//

import XCTest

@testable import List

final class ListP08Tests: XCTestCase {
    func testP08Append() throws {
        XCTAssertEqual(List(1)?.append(2), List(1, 2), "Should've appended 2 to the end!")
        XCTAssertEqual(List(1, 3)?.append(2), List(1, 3, 2), "Should've appended 2 to the end!")
        XCTAssertEqual(List(1, 3)?.append(2), List(1, 3, 2), "Should've appended 2 to the end!")
    }

    func testP08Delete() throws {
        self.measure {
            XCTAssertEqual(List(1, 2, 3)?.deleteAt(1), List(1, 3), "Should've removed mid-element")
            XCTAssertEqual(List(1, 2, 3)?.deleteAt(2), List(1, 2), "Should've removed last element")
            XCTAssertEqual(List(1, 2, 3)?.deleteAt(0), List(2, 3), "Should've removed head-element")
        }
    }

    func testP08removeConsecutiveDuplicates() {
        self.measure {
            XCTAssertEqual(List(1)?.removeConsecutiveDuplicates(), List(1), "Should remain unchanged")
            XCTAssertEqual(List(1, 2)?.removeConsecutiveDuplicates(), List(1, 2), "Should remain unchanged")
            XCTAssertEqual(List(1, 2, 3)?.removeConsecutiveDuplicates(), List(1, 2, 3), "Should remain unchanged")
            XCTAssertEqual(List(1, 2, 3, 3)?.removeConsecutiveDuplicates(), List(1, 2, 3), "Should've changed")
        }
    }

}
