//
// P24: Generate a random permutation of the elements of a list.
//

import Foundation

extension Array {
    func splat() -> (Element, Element) {
        return (self[0], self[1])
    }
}

public extension List {
    func swapBetween(left: Int, right: Int) -> List<T> {
        precondition(left >= 0 && right >= 0 && left < length() && right < length(), "Left and Right indices should be within list's length")
        var returnableList: List<T>? = nil
        var index = 0
        for item in self {
            if (index == left || index == right) {
                let selectedItem = at(index == left ? right : left)!
                returnableList = returnableList != nil ? (returnableList?.append(selectedItem)) : List(selectedItem)
            } else {
                returnableList = returnableList != nil ? returnableList?.append(item) : List(item)
            }
            index = index + 1
        }
        return returnableList!
    }

    func randomPermute() -> List<T> {
        let (left, right) = (0...1).map({ _ -> Int in Int.random(in: (0...length() - 1)) }).splat()
        return left == right ? randomPermute() : swapBetween(left: left, right: right)
    }


}