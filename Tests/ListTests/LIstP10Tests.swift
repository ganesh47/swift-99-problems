import XCTest

@testable import List

final class ListP10Tests: XCTestCase {

    func testP10RLE() {
        self.measure {
            XCTAssertEqual(List(1)?.RLE(), List(Encoded(1, 1)), "Should've RLE'd")
            XCTAssertEqual(List(1, 2)?.RLE(), List(Encoded(1, 1), Encoded(1, 2)), "Should've RLE'd")
            XCTAssertEqual(List(1,1, 2)?.RLE(), List(Encoded(2, 1), Encoded(1, 2)), "Should've RLE'd")
            XCTAssertEqual(List(1,1, 2,2,3,3,4,4,4,4,4)?.RLE(), List(Encoded(2, 1), Encoded(2, 2),Encoded(2,3),Encoded(5,4)), "Should've RLE'd")
        }
    }

}