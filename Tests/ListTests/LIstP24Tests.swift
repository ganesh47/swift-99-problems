import XCTest

@testable import List

final class ListP24Tests: XCTestCase {
    func testP24Lotto() {
        self.measure {
            XCTAssertNotNil(List<Int>.lotto(count: 1, range: (0 ... 9)), "Should've lotto one element")
            XCTAssertEqual(List<Int>.lotto(count:1, range:(0...9)).length(), 1, "Should've lotto one element")
            XCTAssertEqual(List<Int>.lotto(count:4, range:(0...1)).length(), 4, "Should've lotto 4 elements")
            XCTAssertEqual(List<Int>.lotto(count:4, range:(0...9)).length(), 4, "Should've lotto 4 elements")
        }
    }
}