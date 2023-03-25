//
// Created by Ganesh Raman on 10/11/22.
//

import XCTest
@testable import Logic


final class LogicP46Tests: XCTestCase {
    func testTruthTable() {
        self.measure {

            let logic = Logic()
            logic.printTruthTable(logic.and)
            logic.printTruthTable(logic.or)
            logic.printTruthTable(logic.nand)
            logic.printTruthTable(logic.nor)
            logic.printTruthTable(logic.xor)
            logic.printTruthTable(logic.impl)
            logic.printTruthTable(logic.equ)
            let expr = { a, b in
                logic.and(logic.or(a, b), logic.nand(a, b))
            }
            logic.printTruthTable(expr)
        }
    }
}
