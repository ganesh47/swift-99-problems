//
// P19: Rotate a list N places to the left.
//

import Foundation


public extension List {
    func rotate(_ n: Int) -> List<T>? {
        precondition(n > 0, "n should be greater than zero")
        precondition(n < length(), "n should be less than length of the list")
        return slice(n+1, length())?.append(slice(1, n)!)
    }
}