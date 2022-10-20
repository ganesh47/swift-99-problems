//
// Ensure lists are reversed gracefully
//

import XCTest

@testable import List

final class ListP07Tests: XCTestCase {

    func testP07Flatten() throws {
        XCTAssertEqual(List(List(1, 2, 3)!, List(1, 2, 3)!, List(3, 4)!)?.flatten(), List(1, 2, 3, 1, 2, 3, 3, 4), "Should've been flattened to 8 elements")
        XCTAssertEqual(List(List(1, 2, 3)!)!.flatten(), List(1, 2, 3), "Should've been three elements")
        XCTAssertEqual(List(1)?.flatten() as? List<Int>, List(1), "Should remain unaltered")
        XCTAssertEqual(List([1, 2])?.flatten(), List([1, 2]), "Should remain unaltered")
        XCTAssertEqual(List(List("1","2","3")!,List("4")!)?.flatten(),List("1","2","3","4") ,"Should've flattened to 4 strings")
    }

}
