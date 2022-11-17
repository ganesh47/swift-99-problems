//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class NumbersP29Tests: XCTestCase {
    func testIsPrime() {
        self.measure {
            XCTAssertTrue(Numbers.isPrime(number: 3))
            XCTAssertTrue(Numbers.isPrime(number: 7))
            XCTAssertTrue(Numbers.isPrime(number: 11))
            XCTAssertFalse(Numbers.isPrime(number: 12))
            XCTAssertFalse(Numbers.isPrime(number: 24))
            XCTAssertTrue(Numbers.isPrime(number: 10009729))
        }
    }
}
