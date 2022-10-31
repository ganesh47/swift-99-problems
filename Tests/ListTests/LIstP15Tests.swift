import XCTest

@testable import List

final class ListP15Tests: XCTestCase {
    func testP15DuplicateWithTimes() {
        self.measure {
            XCTAssertEqual(List(1, 2, 3, 4)?.duplicate(times:2), List(1, 1, 2, 2, 3, 3, 4, 4), "Should've been same list as result!")
            XCTAssertEqual(List("a", "b", "c")?.duplicate(times:2), List("a", "a", "b", "b", "c", "c"), "Should've been same list as result!")
            XCTAssertEqual(List("a", "b", "c")?.duplicate(times:1), List("a", "b", "c"), "Should've been same list as result!")
        }
    }
}