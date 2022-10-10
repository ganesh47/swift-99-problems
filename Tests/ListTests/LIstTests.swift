//
// Created by Ganesh Raman on 10/10/22.
//

import XCTest
@testable import List

final class ListTests: XCTestCase {
    func testListInit() throws {
        XCTAssertEqual(List(1)?.head, 1,"Head should've been 1")
        XCTAssertNil(List(1)?.tail,"Tail should've been nil")
        XCTAssertEqual(List(1,2)?.tail,List(2),"Tail should've been 2")
    }
}
