//
// Created by Ganesh Raman on 10/11/22.
//

import Foundation

public class Numbers {
    class func isPrime(number: UInt64) -> Bool {
        let rightLimit = number > 5 ?UInt64(floor(sqrt(Double(number)))) : number-1
        return !(2...rightLimit).contains(where: { d -> Bool in number % UInt64(d)  == 0 })
    }

}