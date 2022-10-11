//
// P01 Find the last element
//

import Foundation

//Recurse until tail has only a head-left, while keeping track of prev-head to return

public extension List {
    func penultimate(_ prevHead: T? = nil) -> T? {
        tail == nil ? prevHead : tail?.penultimate(head)
    }
}