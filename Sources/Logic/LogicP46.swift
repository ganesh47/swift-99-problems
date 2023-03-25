//
// Created by Ganesh Raman on 25/03/23.
//

import Foundation
import Foundation

public class Logic {
    func and(_ a: Bool, _ b: Bool) -> Bool {
        return a && b
    }

    func or(_ a: Bool, _ b: Bool) -> Bool {
        return a || b
    }

    func nand(_ a: Bool, _ b: Bool) -> Bool {
        return !(a && b)
    }

    func nor(_ a: Bool, _ b: Bool) -> Bool {
        return !(a || b)
    }

    func xor(_ a: Bool, _ b: Bool) -> Bool {
        return a != b
    }

    func impl(_ a: Bool, _ b: Bool) -> Bool {
        return !a || b
    }

    func equ(_ a: Bool, _ b: Bool) -> Bool {
        return a == b
    }
    func printTruthTable(_ expression: (Bool, Bool) -> Bool) {
        print("A\tB\tResult")
        for a in [true, false] {
            for b in [true, false] {
                let result = expression(a, b)
                print("\(a)\t\(b)\t\(result)")
            }
        }
    }
}