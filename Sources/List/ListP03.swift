//
// P03 Find the kth element
//

import Foundation
//Recurse until the index is reached, starting with 0

public extension List {
    func at(_ at: Int, starting starting: Int = -1) -> T? {
        precondition(at>=0,"Index should at-least be zero!")
        return starting+1 == at ? head : tail?.at(at,starting:starting+1)
    }
}