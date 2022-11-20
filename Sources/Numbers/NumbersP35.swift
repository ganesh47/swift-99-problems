//
// Calculate euler's totient using product formulae
//
//This solves P35!

import Foundation

extension Numbers {
    class func TotientV2(number: UInt64) -> UInt64 {
        //phi(n) = (p1 ** k1-1)(p1-1) * (p2 ** k2-1)(p2-1) where n = (p1 ** k1) * (p2 ** k2) and p1 and p2 are prime-factors of n
        var result: UInt64 = 1
        for item in Numbers.PrimeFactorsv2(number: number) {
            result = (((item.0) - 1) * result) * UInt64(pow(Double(item.0), Double((item.1-1))))
        }
        return result
    }

}