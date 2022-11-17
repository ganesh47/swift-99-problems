//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class NumbersP32Tests: XCTestCase {
    func testTotient() {
        self.measure {
            XCTAssertEqual(Numbers.Totient(number: 3), 2)
            XCTAssertEqual(Numbers.Totient(number: 90), 24)
            XCTAssertEqual(Numbers.Totient(number: 123456), 41088)
        }
    }
}
