//
// P17: Split the list into two parts, when the length of the fist part is given!
//

import Foundation


public extension List {
    func splitByPartLength(_ len: Int) -> List<List<T>?>? {
        precondition(len > 0, "length should be atleast 1")
        precondition(len <= length(), "length should be less than List's length")
        var fistPart: List<T>? =  List(head)
        var secondPart: List<T>? = nil
        var index = 1
        if (tail == nil) {
            return List<List<T>?>([fistPart, secondPart])
        }
        for item in tail! {
            if (index >= len) {
                secondPart = secondPart == nil ? List(item) : secondPart!.append(item)
            } else {
                fistPart = fistPart?.append(item)
            }
            index = index + 1
        }
        return List<List<T>?>([fistPart, secondPart])
    }
}