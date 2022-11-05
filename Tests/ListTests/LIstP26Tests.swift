import XCTest

@testable import List

final class ListP26Tests: XCTestCase {
    func testP26Take() {
        self.measure {
            XCTAssertEqual(List(1,2,3)?.take(count: 1), List(1)!,"Should've taken correctly!")
            XCTAssertEqual(List(1)?.take(count: 1), List(1)!,"Should've done nothing!")
            XCTAssertEqual(List(1,2)?.take(count: 2), List(1,2)!,"Should've done nothing!")
        }
    }

    func testP26AreListsAlike(){
        self.measure{
            XCTAssertTrue(List<Int>.areListsAlike(lhs: List(1,2,3)!, rhs: List(2,3,1)!))
            XCTAssertTrue(List<Int>.areListsAlike(lhs: List(1,2)!, rhs: List(2,1)!))
            XCTAssertTrue(!List<Int>.areListsAlike(lhs: List(1,2,3)!, rhs: List(2,1)!))
        }
    }

    func testP26Combinations() {
        self.measure{
            XCTAssertEqual(List("a","b")?.combinations(group: 2).length(), 1,"There can only be 1 combinations for group of 2")
            XCTAssertEqual(List("a","b")?.combinations(group: 2), List<List<String>>(List("b","a")!),"There can only be 1 combinations for group of 2")
            XCTAssertEqual(List("a","b","c")?.combinations(group: 2).length(), 3,"There can only be 3 combinations for group of 2 from 3 elements")
            XCTAssertEqual(List("a","b","c","d")?.combinations(group: 2).length(), 6,"There can only be 6 combinations for group of 2 from 4 elements")
            XCTAssertEqual(List("a","b","c","d","e")?.combinations(group: 2).length(), 10,"There can only be 2 combinations for group of 2")
            XCTAssertEqual(List("a","b","c","d","e","f")?.combinations(group: 2).length(), 15,"There can only be 2 combinations for group of 2")
            XCTAssertEqual(List("a","b","c","d","e","f")?.combinations(group: 3).length(), 20,"There can only be 2 combinations for group of 2")
        }

    }
}