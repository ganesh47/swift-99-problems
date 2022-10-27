//
// P09: Pack consequitive elements, as sublists
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to eliminate consecutive duplicates!
public protocol Encodeable<T> : Equatable, CustomStringConvertible{
    associatedtype T
}
public struct Encoded<T>: Encodeable where T: Equatable {
    public var description: String

    public static func ==(lhs: Encoded<T>, rhs: Encoded<T>) -> Bool {
        (lhs.item == rhs.item) && (lhs.count == rhs.count)
    }

    let count: Int
    let item: T

    init(_ count: Int, _ item: T) {
        self.count = count
        self.item = item
        description="(\(count),\(item))"
    }
}

public extension List {
    func RLE<U>() -> List<U>? where U == Encoded<T>, T: Equatable {
        var toBeReturnable = List<U>(Encoded(1, head))
        if (tail == nil) {
            return toBeReturnable
        }
        var prevElem = head
        var register = 1
        for item in tail! {
            if prevElem != item {
                toBeReturnable = toBeReturnable?.append(Encoded(register, prevElem))
                register = 1
            } else {
                register = register + 1
            }
            prevElem = item
        }
        toBeReturnable = toBeReturnable?.append(Encoded(register, prevElem))
        return toBeReturnable?.tail
    }
}