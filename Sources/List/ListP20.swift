//
// P20: Remove the Kth element from a linked list.
//

import Foundation


public extension List {
    func removeKth(_ index: Int) -> List<T>? {
        precondition(index > 0, "index should be greater than zero")
        precondition(index <= length(), "index should be less than length of the list")
        if (index == 1) {
            return length() == 1 ? nil : slice(index + 1, length())
        }
        return slice(1, index - 1)?.append(slice(index + 1, length())!)
    }
}