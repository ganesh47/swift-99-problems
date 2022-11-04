import XCTest

@testable import List

final class ListP22Tests: XCTestCase {
    func testP22Range() {
        self.measure {
            XCTAssertEqual(List<Int>.range(from: 1, to: 2), List(1, 2)!, "Should've created a list from a range")
            XCTAssertEqual(List<Int>.range(from: 3, to: 5), List(3, 4, 5)!, "Should've created a list from a range")
        }
    }
}