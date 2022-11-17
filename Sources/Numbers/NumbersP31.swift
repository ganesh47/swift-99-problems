//
// Created by Ganesh Raman on 10/11/22.
//

import Foundation

extension Numbers {
    class func CoPrime(left: UInt64, right: UInt64) -> Bool {
        GCD(left:left, right: right) == 1
    }

}