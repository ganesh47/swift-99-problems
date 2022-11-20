//
// Created by Ganesh Raman on 10/11/22.
//
//This solves both P33 and P34!
import Foundation

extension Numbers {
    class func PrimeFactors(number: UInt64) -> [UInt64] {
        var factors: [UInt64] = []
        var variant = number
        for i in (UInt64(2)...number) {
            if isPrime(number: i) {
                while (variant % i == 0) {
                    if !factors.contains(i) {
                        factors.append(i)
                    }
                    variant = variant / i
                }
            }
        }
        return factors
    }

}