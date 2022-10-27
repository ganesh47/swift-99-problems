import XCTest

@testable import List

final class ListP12Tests: XCTestCase {

    func testP12DecodeRLE() {
        self.measure {
            XCTAssertEqual(List(Encoded(1, 1), Encoded(1, 2))!.decodeRLE(), List(List(1)!,List(2)!)!, "Should've RLE'd")
            XCTAssertEqual(List(Encoded(2, 1), Encoded(1, 2))!.decodeRLE(), List(List(1,1)!,List(2)!)!, "Should've RLE'd")
        }
    }

}