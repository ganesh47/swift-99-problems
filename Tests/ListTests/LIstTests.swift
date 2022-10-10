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
        XCTAssertEqual(List("1","2")?.tail,List("2"),"Tail should've been '2'")
    }

    func testP01FindLastElementOfAList() throws {
        self.measure {
            XCTAssertEqual(List(1)?.last(), 1, "Last element should've been 1")
            XCTAssertEqual(List(1, 2, 3)?.last(), 3, "Last element should've been 3")
            XCTAssertEqual(List("1", "2", "3")?.last(), "3", "Last element should've been 3")
        }


    }
}
