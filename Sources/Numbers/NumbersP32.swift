//
// Created by Ganesh Raman on 10/11/22.
//

import Foundation

extension Numbers {
    class func Totient(number: UInt64) -> Int {
        (1...number).filter({ d -> Bool in Numbers.CoPrime(left: d, right: number) }).count
    }

}