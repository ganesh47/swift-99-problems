//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class NumbersP33Tests: XCTestCase {
    func testPrimeFactors() {
        self.measure {
            XCTAssertEqual(Numbers.PrimeFactors(number: 33), [3, 11], "should've returned 3 and 11")
            XCTAssertEqual(Numbers.PrimeFactors(number: 4), [2], "should've returned 2")
        }
    }
}
