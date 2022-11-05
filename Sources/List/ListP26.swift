//
// P25: Generate the combinations of K distinct objects chosen from the N elements of a linked list.
//

import Foundation


public extension List {
    func take(count: Int) -> List<T> {
        precondition(count > 0 && count <= length(), "Take count elements")
        return List<T>((0...count - 1).map({ it -> T in at(it)! }))!
    }

    func scan(count: Int) -> List<List<T>> where T: Equatable {
        precondition(count > 0 && count <= length(), "Take count elements")
        var toBeReturned: List<List<T>> = List<List<T>>(take(count: count))!
        for i in (1...length() - 1) {
            toBeReturned = List<T>.appendIfNotContains(list: toBeReturned, it: self.rotate(i)!.take(count: count))
        }
        return toBeReturned
    }

    class func areListsAlike(lhs: List<T>, rhs: List<T>) -> Bool where T: Equatable {
        if (lhs.length() != rhs.length()) {
            return false
        }
        var alikeCount = 0
        for i in lhs {
            for j in rhs {
                if (i == j) {
                    alikeCount = alikeCount + 1
                }
            }
        }
        return alikeCount == lhs.length()
    }

    class func appendIfNotContains(list: List<List<T>>, it: List<T>) -> List<List<T>> where T: Equatable {
        let toBeReturned = list
        for item in list {
            if (List<T>.areListsAlike(lhs: item, rhs: it)) {
                return toBeReturned
            }
        }
        return toBeReturned.append(it)
    }

    func combinations(group: Int) -> List<List<T>> where T: Equatable {
        precondition(group > 0 && group <= length(), "Groups should positive non-zero integer less than length of list!")
        var toBeReturned: List<List<T>>? = nil
        for i in (0...length() - 1) {
            for j in (0...length() - 1) {
                if (i == j) {
                    continue
                }
                for toBeAppended in swapBetween(left: i, right: j).scan(count: group) {
                    if (toBeReturned != nil && (toBeReturned?.contains(where: { it in it == toBeAppended }))!) {
                        continue
                    }
                    toBeReturned = toBeReturned == nil ? List<List<T>>(toBeAppended) : List<T>.appendIfNotContains(list: toBeReturned!, it: toBeAppended)
                }
            }
        }
        return toBeReturned!
    }

}