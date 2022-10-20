//
// P08: Eliminate consecutive duplicates of list elements.
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to eliminate consecutive duplicates!


public extension List {
    func tailAt(_ at: Int, starting: Int = -1) -> List<T>? {
        precondition(at >= 0, "Index should at-least be zero!")
        return starting + 1 == at ? tail : tail?.tailAt(at, starting: starting + 1)
    }

    func deleteAt(_ index: Int) -> List<T> {
        precondition(length() > 0, "Cannot empty a list")
        if tailAt(index) != nil {
            tail = tailAt(index)
        }
        return self
    }

}