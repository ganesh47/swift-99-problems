//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class NumbersP35Tests: XCTestCase {
    func testTotientv2() {
        self.measure {
            XCTAssertEqual(Numbers.TotientV2(number: 3), 2)
            XCTAssertEqual(Numbers.TotientV2(number: 90), 24)
            XCTAssertEqual(Numbers.TotientV2(number: 123456), 41088)
        }
    }
}
