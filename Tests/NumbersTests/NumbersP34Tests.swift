//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Numbers

final class NumbersP34Tests: XCTestCase {
    func areEqual(left: [(UInt64, Int)], right: [(UInt64, Int)]) -> Bool {
        if left.count != right.count {
            return false
        }
        var areEq = true;
        for i in (0...(left.count - 1)) {
            if left[i].0 != right[i].0 || right[i].1 != left[i].1 {
                areEq = false
                break
            }
        }
        return areEq
    }

    func testPrimeFactors() {
        self.measure {
            XCTAssertTrue(areEqual(left: Numbers.PrimeFactorsv2(number: 33), right:[(3, 1), (11, 1)]))
            XCTAssertTrue(areEqual(left: Numbers.PrimeFactorsv2(number: 4), right:[(2, 2)]), "should've returned 2")
        }
    }
}
