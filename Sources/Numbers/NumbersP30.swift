//
// Created by Ganesh Raman on 10/11/22.
//

import Foundation

extension Numbers {
    class func GCD(left: UInt64, right: UInt64) -> UInt64 {
        left == right ? left : (left > right ? GCD(left: left - right, right: right) : GCD(left: left, right: right - left))
    }

}