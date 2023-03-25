//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers
@testable import List

final class Numbers41Tests: XCTestCase {
    func testValidateGolbachsCoomposition() {
        self.measure {
            XCTAssertEqual((Numbers.evenNumbersAndGoldbachComposition(lowerLimit: 1, upperLimit: 20))?.length(), 9, "There are 9 compositions between 1 and 20")
            XCTAssertEqual(
                    Numbers.evenNumbersAndGoldbachComposition(lowerLimit: 1, upperLimit: 20)!
                            .map {
                                $0.0
                            },
                    [4, 6, 8, 10, 12, 14, 16, 18, 20], "Compositions should be correct!")

        }
    }
}
