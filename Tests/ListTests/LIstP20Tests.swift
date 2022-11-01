import XCTest

@testable import List

final class ListP20Tests: XCTestCase {
    func testP20Rotate() {
        self.measure {
            let inputList = List(1, 2, 3, 4)
            XCTAssertEqual(inputList?.removeKth(1), List(2, 3, 4)!, "Should've removed first element")
            XCTAssertEqual(inputList?.removeKth(2), List(1, 3, 4)!, "Should've removed first element")
            XCTAssertEqual(inputList?.append(5).removeKth(2), List(1, 3, 4, 5)!, "Should've removed first element")
        }
    }
}