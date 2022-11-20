//
// Calculate list of primes between limits
//


import Foundation

extension Numbers {
    class func Primes(left: UInt64, right: UInt64) -> [UInt64] {
        precondition(left <= right, "Left index should be lesser than or equal to right")
        var result: [UInt64] = []
        for item in (left...right) {
            if (Numbers.isPrime(number: item)) {
                result.append(item)
            }
        }
        return result
    }

}