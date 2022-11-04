import XCTest

@testable import List

final class ListP19Tests: XCTestCase {
    func testP19Rotate() {
        self.measure {
            let inputList = List(1, 2, 3, 4)
            XCTAssertEqual(List(1,2)?.rotate(1), List(2,1)!, "Should've rotated first to the end!")
            XCTAssertEqual(inputList?.rotate(1), List(2, 3, 4, 1)!, "Should've rotated first to the end!")
            XCTAssertEqual(inputList?.rotate(3), List(4, 1, 2, 3)!, "Should've rotated the last element!")
            XCTAssertEqual(inputList?.rotate(2), List(3, 4, 1, 2)!, "Should've rotated the last element!")
            XCTAssertEqual(inputList?.rotate(1)?.rotate(1)?.rotate(1)?.rotate(1), inputList!, "Any list rotated length times, should remain same!")
        }
    }
}