import XCTest

@testable import List


final class ListP11Tests: XCTestCase {
    func testP11ModRLE() {
        self.measure {
            XCTAssertEqual(List(1)?.RLEMod(), List(ModEncoded(1)), "Should've RLE'd")
            XCTAssertEqual(List(1, 2)?.RLEMod(), List(ModEncoded(1), ModEncoded(2)), "Should've RLE'd")
            XCTAssertEqual(List(1, 1, 2)?.RLEMod(), List(ModEncoded(2, 1), ModEncoded(2)), "Should've RLE'd")
            XCTAssertEqual(List(1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 4)?.RLEMod(), List(ModEncoded(2, 1), ModEncoded(2, 2), ModEncoded(2, 3), ModEncoded(5, 4)), "Should've RLE'd")
        }
    }

}