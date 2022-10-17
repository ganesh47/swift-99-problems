//
// Ensure lists are reversed gracefully
//

import XCTest

@testable import List

final class ListP06Tests: XCTestCase {

    func testP05ReverseList() throws {
        self.measure {
            XCTAssertFalse((List(1, 2, 3)!.isPalindrome()),"Should've been false")
            XCTAssert((List(1)!.isPalindrome()),"Should've been true")
            XCTAssert((List(1,2,1)!.isPalindrome()),"Should've been true")
            XCTAssert((List("1","2","1")!.isPalindrome()),"Should've been true")
        }

    }

}
