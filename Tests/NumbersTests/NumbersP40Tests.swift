//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class Numbers40Tests: XCTestCase {
    func testValidateGolbachsConjecture() {
        self.measure {
            XCTAssertEqual(Numbers.ValidateGoldbachConjecture(100), true, "100 should be a valid Goldbach number")
            XCTAssertEqual(Numbers.ValidateGoldbachConjecture(101), false, "101 should not be a valid Goldbach number")
        }
    }
}
