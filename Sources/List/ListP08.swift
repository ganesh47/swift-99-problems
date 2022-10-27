//
// P08: Eliminate consecutive duplicates of list elements.
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to eliminate consecutive duplicates!

public struct ListIterator<T>: IteratorProtocol {
    mutating public func next() -> T? {
        if list != nil {
            let element = list?.head
            list = list?.tail
            return element
        }
        return nil
    }

    public typealias Element = T
    var list: List<T>?

    init(_ list: List<T>) {
        self.list = list
    }
}

extension List: Sequence {
    public typealias Element = T
    public typealias Iterator = ListIterator<T>

    public func makeIterator() -> Iterator {
        ListIterator<T>(self)
    }

    func deleteAt(_ index: Int) -> List<T>? {
        var returningList = index == 0 ? tail : List(head)
        if (index == 0 || tail == nil) {
            return returningList
        }
        var i = 0
        for item in tail! {
            i = i + 1
            if (i != index) {
                returningList = returningList?.append(item)
            }
        }
        return returningList
    }

    public func removeConsecutiveDuplicates() -> List<T>? where T: Equatable {
        var returnableList = List(head)
        if tail == nil {
            return returnableList
        }
        var prevElem = head
        for item in tail! {
            if prevElem != item {
                returnableList = returnableList?.append(item)
            }
            prevElem = item
        }
        return returnableList
    }
}