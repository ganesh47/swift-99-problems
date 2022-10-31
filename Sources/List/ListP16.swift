//
// P15: Drop every nth element of a list!
//

import Foundation


public extension List {
    func drop(every: Int) -> List<T>? {
        precondition(every > 0, "Times should be greater than 0")
        if (every == 1 && tail == nil) {
            return nil
        }
        var returnableList: List<T>? = every == 1 ? nil : List(head)
        if tail == nil {
            return returnableList
        }
        var index = 0
        for item in tail! {
            if (index % every != 0) {
                if (returnableList == nil) {
                    returnableList = List(item)
                } else {
                    returnableList = returnableList!.append(item)
                }
            }
            index = index + 1
        }
        return returnableList
    }
}