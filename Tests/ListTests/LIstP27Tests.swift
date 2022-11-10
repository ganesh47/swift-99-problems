import XCTest

@testable import List

final class ListP27Tests: XCTestCase {
    func testP27Take() {
        self.measure {
            XCTAssertEqual(List<Int>.take(count: 1, offset: 0, from: List(1, 2, 3)!), List(1)!, "Should've taken correctly!")
            XCTAssertEqual(List<Int>.take(count: 1, offset: 0, from: List(1)!), List(1)!, "Should've done nothing!")
            XCTAssertEqual(List<Int>.take(count: 2, offset: 0, from: List(1, 2)!), List(1, 2)!, "Should've done nothing!")
            XCTAssertEqual(List<Int>.take(count: 2, offset: 1, from: List(1, 2, 3)!), List(2, 3)!, "Should've done nothing!")
        }
    }

    func testGroup3() {
        self.measure {
            XCTAssertEqual(List<Int>.range(from: 1, to: 9).group3(counter: [2, 3, 4]).length(), 1260) //multinomial coeff of 9<2,3,4> is 1260
        }
    }

}