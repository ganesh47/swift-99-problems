import XCTest

@testable import List

final class ListP25Tests: XCTestCase {
    func testP25SwapBetween() {
        self.measure {
            XCTAssertEqual(List(1,2,3)?.swapBetween(left: 1, right: 2), List(1,3,2)!,"Should've swapped correctly!")
            XCTAssertEqual(List(1,2)?.swapBetween(left: 1, right: 1), List(1,2)!,"Should've done nothing!")
            XCTAssertEqual(List(1,2)?.swapBetween(left: 0, right: 1), List(2,1)!,"Should've swapped!")
        }
    }
    func testRandomPermute(){
        self.measure{
            XCTAssertNotNil(List(1,2,3,4)?.randomPermute(),"Should permute and not return nil or throw error!")
            XCTAssertNotEqual(List(1,2,3,4)?.randomPermute(),List(1,2,3,4)!,"Should permute and not return same list!")
            XCTAssertEqual(List(1,2,3,4)?.randomPermute().length(), 4,"Length of the list should not change")
            XCTAssertTrue(((List(1,2)?.randomPermute().contains { item in item==1 || item == 2 })!),"Should only contain original elements, when permuted")
        }
    }
}