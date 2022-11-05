//
// P24: Lotto, draw N different random numbers from the set of 1..M
//

import Foundation


public extension List {
    class func lotto(count: Int,range:ClosedRange<Int>) -> List<Int> {
        precondition(count>0, "Count should be non-zero positive")
        return List<Int>((1...count).map({ (index) -> Int in Int.random(in: range) }))!
    }
}