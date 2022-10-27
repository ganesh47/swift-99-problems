//
// P09: Pack consequitive elements, as sublists
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to eliminate consecutive duplicates!

public extension List {
    func subListConsecutives<U>() -> List<U>? where U == List<T>, T: Equatable {
        var returnableList: List<U> = List<U>(List(head)!)!
        if tail == nil {
            return returnableList
        }
        var prevElem = head
        var register = List(head)
        for item in tail! {
            if prevElem != item {
                returnableList = returnableList.append(register!)
                register = List(item)
            } else {
                register = register?.append(item)
            }
            prevElem = item
        }
        returnableList = returnableList.append(register!)
        return returnableList.tail
    }
}