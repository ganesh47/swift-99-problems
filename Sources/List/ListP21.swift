//
// P21: Insert an element at a given position into a linked list.
//

import Foundation


public extension List {
    func insertAt(index: Int, _ element: T) -> List<T> {
        precondition(index > 0, "Index should be greater than 0")
        precondition(index <= length(), "Index should be less than the length of the list")
        if (index == 1) {
            return (List(element)?.append(self))!
        } else if (index == length()) {
            return self.append(element)
        } else {
            return (slice(1, index)?.append(element).append(slice(index + 1, length())!))!
        }

    }
}