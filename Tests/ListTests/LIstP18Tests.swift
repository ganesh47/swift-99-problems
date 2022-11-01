import XCTest

@testable import List

final class ListP18Tests: XCTestCase {
    func testP18Slice() {
        self.measure {
            XCTAssertEqual(List(1, 2, 3, 4)?.slice(1,2),List(1,2)!,"Should've sliced first and second element!")
            XCTAssertEqual(List(1, 2, 3, 4)?.slice(3,4),List(3,4)!,"Should've sliced third and fourth element!")
            XCTAssertEqual(List(1, 2, 3, 4)?.slice(1,1),List(1)!,"Should've sliced first element alone!")
        }
    }
}