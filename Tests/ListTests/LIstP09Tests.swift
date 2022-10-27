import XCTest

@testable import List

final class ListP09Tests: XCTestCase {
    func testP09subListConsecutiveDuplicates() {
        self.measure {
            XCTAssertEqual(List(1, 2)?.subListConsecutives(), List(List(1)!, List(2)!), "Should've returned a sub-list of lists")
            XCTAssertEqual(List(1, 1, 2)?.subListConsecutives(), List(List(1, 1)!, List(2)!), "Should've returned a sub-list of lists")
            XCTAssertEqual(List(1, 1, 2, 2)?.subListConsecutives(), List(List(1, 1)!, List(2, 2)!), "Should've returned a sub-list of lists")
            XCTAssertEqual(List(1, 1, 2, 2, 3)?.subListConsecutives(), List(List(1, 1)!, List(2, 2)!, List(3)!), "Should've returned a sub-list of lists")
        }
    }

}