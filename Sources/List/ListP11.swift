//
// P09: Pack consequitive elements, as sublists
//

import Foundation

//Because a list has Equatable protocol implemented, it makes it easier to eliminate consecutive duplicates!

public struct ModEncoded<T>: Equatable, CustomStringConvertible where T: Equatable {
    public static func ==(lhs: ModEncoded<T>, rhs: ModEncoded<T>) -> Bool {
        lhs.count == rhs.count && lhs.item == rhs.item
    }

    public var description: String

    var count: Int = 1
    var item: T

    init(_ count: Int, _ item: T) {
        self.count = count
        self.item = item
        description = "(\(count),\(item))"
    }

    init(_ item: T) {
        self.item = item
        description = "\(item)"
    }
}


public extension List {
    func RLEMod() -> List<ModEncoded<T>>? where T: Equatable {
        typealias U = ModEncoded<T>
        var toBeReturnable = List<U>(ModEncoded(1, head))
        if (tail == nil) {
            return toBeReturnable
        }
        var prevElem = head
        var register = 1
        for item in tail! {
            if prevElem != item {
                toBeReturnable = toBeReturnable?.append(ModEncoded(register, prevElem))
                register = 1
            } else {
                register = register + 1
            }
            prevElem = item
        }
        toBeReturnable = toBeReturnable?.append(ModEncoded(register, prevElem))
        return toBeReturnable?.tail
    }
}