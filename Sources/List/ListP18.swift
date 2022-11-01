//
// P18: Extract a slice from a list
//

import Foundation


public extension List {
    func slice(_ left: Int, _ right: Int) -> List<T>? {
        precondition(left > 0, "Left index should be greater than zero")
        precondition(right > 0, "Right index should be greater than zero")
        precondition(right <= length(), "Right index cannot be greater than the length")
        precondition(right >= left, "Right index should be greater than left")

        var returnableList: List<T>? = nil
        var index = 1
        if (tail == nil) {
            return returnableList
        }
        for item in self {
            if (index >= left && index <= right) {
                if (returnableList != nil) {
                    returnableList = returnableList?.append(item)
                } else {
                    returnableList = List(item)
                }
            }
            index = index + 1
        }
        return returnableList
    }
}