//
// P05 Reverse a list
//

import Foundation

//Recurse until there's only a head-left, while appending the result

public extension List {
    func append(_ item: T) -> List<T> {
        if let tail {
            self.tail = tail.append(item)
        } else {
            self.tail = List(item)
        }
        return self
    }
}

public extension List {
    func reverse() -> List<T> {
        if let tail {
            return tail.reverse().append(head)
        } else {
            return List(head)!
        }

    }
}