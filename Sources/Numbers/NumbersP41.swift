//
// Calculate list of primes between limits
//


import Foundation
import List

extension Numbers {
    class func goldbachComposition(_ number: UInt64) -> (UInt64, UInt64)? {
        if (number <= 2 || number % 2 != 0) {
            return nil
        }
        for i in 2...(number / 2) {
            if isPrime(number: i) && isPrime(number: number - i) {
                return (i, number - i)
            }
        }
        return nil
    }

    public class func evenNumbersAndGoldbachComposition(lowerLimit: Int, upperLimit: Int) -> List<(UInt64, (UInt64, UInt64))>? {
        var returnableList: List<(UInt64, (UInt64, UInt64))>? = nil
        for i in (lowerLimit...upperLimit) {
            if i % 2 == 0 {
                if let (a, b) = goldbachComposition(UInt64(i)) {
                    let tuple = (UInt64(i), (UInt64(a), UInt64(b)))
                    if (returnableList == nil) {
                        returnableList = List<(UInt64, (UInt64, UInt64))>(tuple)
                    } else {
                        returnableList=returnableList!.append(tuple)
                    }
                }
            }
        }
        return returnableList
    }
}
