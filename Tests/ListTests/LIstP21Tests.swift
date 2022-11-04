import XCTest

@testable import List

final class ListP21Tests: XCTestCase {
    func testP21InsertAt() {
        self.measure {
            let inputList = List(1, 2, 3, 4)
            XCTAssertEqual(List(1)?.insertAt(index: 1, 2), List(2, 1)!, "Should've inserted element at index")
            XCTAssertEqual(inputList?.insertAt(index: 1, 2), List(2, 1, 2, 3, 4)!, "Should've inserted element at index")
            XCTAssertEqual(inputList?.insertAt(index: 2, 2), List(1, 2, 2, 3, 4)!, "Should've inserted element at index")
            XCTAssertEqual(inputList?.insertAt(index: 3, 2), List(1, 2, 3, 2, 4)!, "Should've inserted element at index")
            XCTAssertEqual(inputList?.insertAt(index: 4, 2), List(1, 2, 3, 4, 2)!, "Should've inserted element at index")
        }
    }
}