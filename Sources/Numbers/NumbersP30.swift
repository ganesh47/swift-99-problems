//
// Calculate (eucledean) GCD of two numbers
//

import Foundation

extension Numbers {
    class func GCD(left: UInt64, right: UInt64) -> UInt64 {
        if (left == 1 || right == 1) {
            return 1
        }
        return left == right ? left : (left > right ? GCD(left: left - right, right: right) : GCD(left: left, right: right - left))
    }

}