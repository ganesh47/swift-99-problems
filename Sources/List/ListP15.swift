//
// P14: Duplicate the elements of a list, given number of times!
//

import Foundation


public extension List {
    func duplicate(times: Int) -> List<T> {
        precondition(times>0,"Times should be greater than 0")
        var returnableList: List<T> = List((1...times).map { _ in
            head
        })!
        if tail == nil {
            return returnableList
        }
        for item in tail! {
            for _ in 1...times {
                returnableList = returnableList.append(item)
            }
        }
        return returnableList
    }
}