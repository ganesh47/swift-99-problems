//
// Check if a number is prime
//

import Foundation

public class Numbers {
    class func isPrime(number: UInt64) -> Bool {
        if number == 1 || number == 2 || number == 3 {
            return true
        }
        let rightLimit = number > 5 ? UInt64(floor(sqrt(Double(number)))) : number - 1
        return !(2...rightLimit).contains(where: { d -> Bool in number % UInt64(d) == 0 })
    }
}