//
// Ensure lists are reversed gracefully
//

import XCTest

@testable import List

final class ListP07Tests: XCTestCase {

    func testP07Flatten() throws {

/*
            XCTAssertEqual(List(List(1,2,3)!,List(1,2,3)!,List(3,4)!)?.flatten(), List(List(1,2,3,1,2,3,3,4)!),"Should've been flattened")
*/
/*         print(type(of: List(List(1,2,3)!)?.head))
         print(type(of: List(List(1,2,3)!)))
        print(((List(List(1,2,3)!)?.head) as! List).length())*/
         print(List(List(1,2,3)!)!.flatten().head)
            XCTAssertEqual(List(1)?.flatten(), List(1),"Should remain unaltered")
            XCTAssertEqual(List([1,2])?.flatten(), List([1,2]),"Should remain unaltered")


    }

}
