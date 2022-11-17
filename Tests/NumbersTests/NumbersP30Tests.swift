//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class NumbersP30Tests: XCTestCase {
    func testGCD() {
        self.measure {
            XCTAssertEqual(Numbers.GCD(left: 3, right: 4), 1, "Should've been 1")
            XCTAssertEqual(Numbers.GCD(left: 301, right: 401), 1, "Should've been 1")
            XCTAssertEqual(Numbers.GCD(left: 49, right: 7), 7, "Should've been 7")
        }
    }
}
