//
// P01 Find the last element
//

import Foundation
//Recurse until only head is left, then return head
public extension List {
    func last() -> T {
        tail == nil ? head : (tail?.last())!
    }
}