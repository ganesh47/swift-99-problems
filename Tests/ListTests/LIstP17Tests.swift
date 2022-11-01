import XCTest

@testable import List

final class ListP17Tests: XCTestCase {
    func testP17SplitByLength() {
        self.measure {
            XCTAssertEqual(List(1, 2, 3, 4)?.splitByPartLength(2),List(List(1,2),List(3,4))!,"Shouold've dropped every 2nd element!")
            XCTAssertEqual(List(1, 2, 3, 4)?.splitByPartLength(1),List(List(1),List(2,3,4))!,"Shouold've dropped every 2nd element!")
            XCTAssertEqual(List(1, 2, 3, 4)?.splitByPartLength(4),List(List(1,2,3,4),nil)!,"Shouold've dropped every 2nd element!")
        }
    }
}