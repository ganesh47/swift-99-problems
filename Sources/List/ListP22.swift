//
// P22: Return a list containing all integers within a range
//

import Foundation


public extension List {
    class func range(from: Int, to: Int) -> List<Int> {
        precondition(from > 0 && to > 0, "Both from and to should be positive")
        precondition(from < to, "From should be less than to")
        return List<Int>(Array(from...to))!
    }
}