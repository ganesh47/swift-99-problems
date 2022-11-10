import XCTest

@testable import List

final class ListP28Tests: XCTestCase {
    func testSortListOfListByLength() {
        XCTAssertEqual(
                List<Int>.sortListOfListByLength(list: List(List<Int>.range(from: 1, to: 2),
                        List<Int>.range(from: 2, to: 4))!),
                List(List<Int>.range(from: 1, to: 2),
                        List<Int>.range(from: 2, to: 4))
        )
        XCTAssertEqual(
                List<Int>.sortListOfListByLength(list: List(List<Int>.range(from: 1, to: 9),
                        List<Int>.range(from: 2, to: 6))!),
                List(List<Int>.range(from: 2, to: 6),
                        List<Int>.range(from: 1, to: 9))
        )
    }
}