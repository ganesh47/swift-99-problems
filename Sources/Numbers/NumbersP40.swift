//
// Calculate list of primes between limits
//


import Foundation

extension Numbers {
    class func ValidateGoldbachConjecture(_ num: UInt64) -> Bool {
        if num <= 2 || num % 2 != 0 { return false }
        for i in 2...(num/2) {
            if isPrime(number: i) && isPrime(number: num-i) {
                return true
            }
        }
        return false
    }
}