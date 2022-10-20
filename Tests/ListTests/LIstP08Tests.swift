//
// Ensure lists are reversed gracefully
//

import XCTest

@testable import List

final class ListP08Tests: XCTestCase {
    func testP08Delete() throws {
          XCTAssertEqual(List(1,2,3)?.deleteAt(1) , List(1,3), "Should remain unaltered")

    }

}
