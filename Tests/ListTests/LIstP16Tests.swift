import XCTest

@testable import List

final class ListP16Tests: XCTestCase {
    func testP16DuplicateWithTimes() {
        self.measure {
            XCTAssertEqual(List(1, 2, 3, 4)?.drop(every: 2),List(1,3),"Shouold've dropped every 2nd element!")
            XCTAssertEqual(List(1, 2, 3, 4)?.drop(every: 1),nil,"Shouold've dropped all elements!")
            XCTAssertEqual(List(1)?.drop(every: 2),List(1),"Shouold've dropped no elements!")
        }
    }
}