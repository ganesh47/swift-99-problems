//
// Calcualte totient by nominal definition
//

import Foundation

extension Numbers {
    class func Totient(number: UInt64) -> Int {
        (1...number).filter({ d -> Bool in Numbers.CoPrime(left: d, right: number) }).count
    }

}