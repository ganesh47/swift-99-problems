//
// P19: Rotate a list N places to the left.
//

import Foundation


public extension List {
    func rotate(_ n: Int) -> List<T>? {
        precondition(n > 0, "index to be rotated should be greater than zero")
        precondition(n < length(), "index to be rotated should be less than length of the list")
        return slice(n+1, length())?.append(slice(1, n)!)
    }
}