import XCTest

@testable import List

final class ListP23Tests: XCTestCase {
    func testP23SelectRandomElement() {
        self.measure {
            XCTAssertNotNil(List<Int>.range(from: 1, to: 9).randExtract(count: 3), "Should've extracted something")
            XCTAssertEqual(List<Int>.range(from: 1, to: 9).randExtract(count: 1).length(), 1, "Should only extract one element")
            XCTAssertEqual(List(1)!.randExtract(count: 1).length(), 1, "Should only extract one element")
        }
    }
}