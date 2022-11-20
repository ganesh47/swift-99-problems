//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class NumbersP36Tests: XCTestCase {
    func testPrimes() {
        self.measure {
            XCTAssertEqual(Numbers.Primes(left: 3, right: 10), [3, 5, 7])
            XCTAssertEqual(Numbers.Primes(left: 11, right: 21), [11, 13, 17, 19])
        }
    }
}
