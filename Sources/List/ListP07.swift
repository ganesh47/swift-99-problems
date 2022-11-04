//
// P07: Flatten a nested list structure.
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to compare itself, with its inverted self!


public extension List {
    func append(_ items: List<T>) -> List<T> {
        var toBeReturned = self
        toBeReturned = toBeReturned.append(items.head)
        var tailZ = items.tail
        while (tailZ != nil) {
            toBeReturned = toBeReturned.append(tailZ!.head)
            tailZ = tailZ?.tail
        }
        return toBeReturned
    }

    func flatten() -> List<T> {
        self
    }

    func flatten<U>() -> List<U> where T == List<U> {
        var flatHead = head
        if (tail == nil) {
            return flatHead
        } else {
            flatHead = flatHead.append((tail?.flatten())!)
        }
        return flatHead
    }

}