//
// Calcualte prime factors with frequency/coefficient of each factor
//
//This solves P34!

import Foundation

extension Numbers {
    class func PrimeFactorsv2(number: UInt64) -> [(UInt64, Int)] {
        var factors: [(UInt64, Int)] = []

        var variant = number
        for i in (UInt64(2)...number) {
            var index = 0
            if isPrime(number: i) {
                while (variant % i == 0) {
                    index = index + 1
                    variant = variant / i
                }
                if (index > 0) {
                    factors.append((i, index))
                }
            }
        }
        return factors
    }

}