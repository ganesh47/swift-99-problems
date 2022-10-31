//
// P14: Duplicate the elements of a list!
//

import Foundation


public extension List {
    func duplicate() -> List<T> {
        var returnableList = List(head)
        if tail == nil {
            return returnableList!
        }
        for item in tail! {
            returnableList = returnableList?.append(item)
        }
        return returnableList!
    }
}