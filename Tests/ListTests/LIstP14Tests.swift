import XCTest

@testable import List

final class ListP14Tests: XCTestCase {

    func testP14Duplicate() {
        self.measure {
            XCTAssertEqual(List(1)?.duplicate(), List(1, 1), "Should've been same list as result!")
            XCTAssertEqual(List(1, 2, 3, 4)?.duplicate(), List(1, 1, 2, 2, 3, 3, 4, 4), "Should've been same list as result!")
            XCTAssertEqual(List("a", "b", "c")?.duplicate(), List("a", "a", "b", "b", "c", "c"), "Should've been same list as result!")
        }
    }

}