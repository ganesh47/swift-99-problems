//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class NumbersP31Tests: XCTestCase {
    func testCoPrimes() {
        self.measure {
            XCTAssertTrue(Numbers.CoPrime(left: 3, right: 4))
            XCTAssertTrue(Numbers.CoPrime(left: 301, right: 41))
            XCTAssertFalse(Numbers.CoPrime(left: 770, right: 10))
        }
    }
}
